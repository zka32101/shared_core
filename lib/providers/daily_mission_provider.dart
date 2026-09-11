import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/daily_mission_model.dart';

/// State for daily mission management
class DailyMissionState {
  final List<DailyMission> missions;
  final Map<String, DailyMissionProgress> userProgress;
  final bool isLoading;
  final String? error;
  final int totalCoinsToday;
  final DateTime lastResetDate;

  DailyMissionState({
    this.missions = const [],
    this.userProgress = const {},
    this.isLoading = false,
    this.error,
    this.totalCoinsToday = 0,
    required this.lastResetDate,
  });

  DailyMissionState copyWith({
    List<DailyMission>? missions,
    Map<String, DailyMissionProgress>? userProgress,
    bool? isLoading,
    String? error,
    int? totalCoinsToday,
    DateTime? lastResetDate,
  }) {
    return DailyMissionState(
      missions: missions ?? this.missions,
      userProgress: userProgress ?? this.userProgress,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      totalCoinsToday: totalCoinsToday ?? this.totalCoinsToday,
      lastResetDate: lastResetDate ?? this.lastResetDate,
    );
  }
}

/// Daily mission notifier for state management
class DailyMissionNotifier extends StateNotifier<DailyMissionState> {
  static const int RESET_HOUR = 5; // Reset at 5:00 AM
  static const String CACHE_KEY_PREFIX = 'daily_missions_cache_';
  static const String RESET_DATE_KEY_PREFIX = 'daily_missions_reset_date_';

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late SharedPreferences _prefs;
  late String _userId;
  late String _appId;

  DailyMissionNotifier()
      : super(DailyMissionState(lastResetDate: DateTime.now()));

  /// Initialize daily missions for the current user and app
  Future<void> initializeDailyMissions(String userId, String appId) async {
    state = state.copyWith(isLoading: true);
    _userId = userId;
    _appId = appId;

    try {
      _prefs = await SharedPreferences.getInstance();

      // Check if we need to reset today's missions
      final lastReset = _getLastResetDate();
      final now = DateTime.now();
      final shouldReset = _shouldResetMissions(lastReset, now);

      if (shouldReset) {
        await _resetDailyProgress();
        _setLastResetDate(now);
      }

      // Load missions from Firestore
      await _loadMissionsFromFirestore(appId);

      // Load progress from cache or Firestore
      await _loadUserProgress();

      state = state.copyWith(isLoading: false, error: null);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to initialize daily missions: $e',
      );
    }
  }

  /// Update progress for a specific daily mission
  Future<void> updateDailyProgress(String missionId, int value) async {
    try {
      final mission = state.missions.firstWhere(
        (m) => m.missionId == missionId,
        orElse: () => throw Exception('Mission not found'),
      );

      // Update local state
      final currentProgress = state.userProgress[missionId] ??
          DailyMissionProgress(
            userId: _userId,
            missionId: missionId,
            currentValue: 0,
            lastResetDate: _getLastResetDate(),
            createdAt: DateTime.now(),
          );

      final newValue = currentProgress.currentValue + value;
      final isCompleted = newValue >= mission.targetValue;
      final completedAt = isCompleted ? DateTime.now() : null;

      final updatedProgress = currentProgress.copyWith(
        currentValue: newValue,
        completed: isCompleted,
        completedAt: completedAt,
      );

      // Update user progress map
      final updatedProgressMap = {...state.userProgress};
      updatedProgressMap[missionId] = updatedProgress;

      // Calculate total coins earned today
      int totalCoins = state.totalCoinsToday;
      if (isCompleted && !currentProgress.completed) {
        // Mission just completed
        if (mission.reward.type == RewardType.coins) {
          totalCoins += mission.reward.amount;
        }
      }

      state = state.copyWith(
        userProgress: updatedProgressMap,
        totalCoinsToday: totalCoins,
      );

      // Save to Firestore
      await _saveProgressToFirestore(updatedProgress);
      // Save to local cache
      await _saveProgressToCache(updatedProgress);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to update mission progress: $e',
      );
    }
  }

  /// Complete a daily mission and grant rewards
  Future<void> completeDailyMission(String missionId) async {
    try {
      final progress = state.userProgress[missionId];
      if (progress == null || progress.completed) {
        return; // Already completed or no progress
      }

      final mission = state.missions.firstWhere(
        (m) => m.missionId == missionId,
        orElse: () => throw Exception('Mission not found'),
      );

      // Mark as completed
      await updateDailyProgress(missionId, mission.targetValue);
    } catch (e) {
      state = state.copyWith(
        error: 'Failed to complete mission: $e',
      );
    }
  }

  /// Get daily missions that haven't been completed yet
  List<DailyMissionListItem> getActiveMissions() {
    return state.missions.map((mission) {
      final progress = state.userProgress[mission.missionId];
      final isLocked = progress == null && !mission.enabled;
      final progressPercentage = progress != null
          ? ((progress.currentValue / mission.targetValue) * 100).toInt()
          : 0;

      return DailyMissionListItem(
        mission: mission,
        progress: progress ??
            DailyMissionProgress(
              userId: _userId,
              missionId: mission.missionId,
              currentValue: 0,
              lastResetDate: _getLastResetDate(),
              createdAt: DateTime.now(),
            ),
        isLocked: isLocked,
        progressPercentage: progressPercentage,
      );
    }).toList();
  }

  // ===== Private methods =====

  /// Load missions from Firestore RemoteConfig or database
  Future<void> _loadMissionsFromFirestore(String appId) async {
    try {
      final snapshot = await _firestore
          .collection('analytics')
          .doc('daily_missions')
          .collection('config')
          .doc('active')
          .get();

      if (snapshot.exists) {
        final data = snapshot.data() as Map<String, dynamic>;
        final missionsList = (data['missions'] as List<dynamic>?)
                ?.map((m) => DailyMission.fromJson(m as Map<String, dynamic>))
                .where((mission) =>
                    mission.appIds.isEmpty || mission.appIds.contains(appId))
                .toList() ??
            [];

        state = state.copyWith(missions: missionsList);
      }
    } catch (e) {
      // Gracefully handle Firestore errors
      state = state.copyWith(missions: _getDefaultMissions(appId));
    }
  }

  /// Load user progress from Firestore or cache
  Future<void> _loadUserProgress() async {
    try {
      final lastReset = _getLastResetDate();

      // Try to load from Firestore first
      final userDoc = await _firestore
          .collection('analytics')
          .doc('daily_missions')
          .collection('users')
          .doc(_userId)
          .collection('progress')
          .doc(_formatDate(lastReset))
          .get();

      if (userDoc.exists) {
        final progressData =
            userDoc.data() as Map<String, dynamic>? ?? {};
        final progressMap = <String, DailyMissionProgress>{};

        progressData.forEach((key, value) {
          if (value is Map<String, dynamic>) {
            final progress = DailyMissionProgress.fromJson(value);
            progressMap[progress.missionId] = progress;
          }
        });

        state = state.copyWith(userProgress: progressMap);
      } else {
        // Load from local cache if Firestore data unavailable
        _loadProgressFromCache();
      }
    } catch (e) {
      // Fall back to cache on error
      _loadProgressFromCache();
    }
  }

  /// Load progress from local SharedPreferences cache
  void _loadProgressFromCache() {
    try {
      final cacheKey = '$CACHE_KEY_PREFIX$_userId';
      final cachedData = _prefs.getString(cacheKey);

      if (cachedData != null) {
        final decoded = jsonDecode(cachedData) as Map<String, dynamic>;
        final progressMap = <String, DailyMissionProgress>{};

        decoded.forEach((key, value) {
          if (value is Map<String, dynamic>) {
            final progress = DailyMissionProgress.fromJson(value);
            progressMap[progress.missionId] = progress;
          }
        });

        state = state.copyWith(userProgress: progressMap);
      }
    } catch (e) {
      // Cache corruption; continue with empty progress
    }
  }

  /// Save progress to Firestore
  Future<void> _saveProgressToFirestore(DailyMissionProgress progress) async {
    try {
      final lastReset = _getLastResetDate();
      await _firestore
          .collection('analytics')
          .doc('daily_missions')
          .collection('users')
          .doc(_userId)
          .collection('progress')
          .doc(_formatDate(lastReset))
          .update({
        progress.missionId: progress.toJson(),
      });
    } catch (e) {
      // Silently fail on Firestore writes; cache is the source of truth
    }
  }

  /// Save progress to local cache
  Future<void> _saveProgressToCache(DailyMissionProgress progress) async {
    try {
      final cacheKey = '$CACHE_KEY_PREFIX$_userId';
      final progressMap = {...state.userProgress};
      progressMap[progress.missionId] = progress;

      final encoded =
          jsonEncode(progressMap.map((k, v) => MapEntry(k, v.toJson())));
      await _prefs.setString(cacheKey, encoded);
    } catch (e) {
      // Cache write failed; continue
    }
  }

  /// Reset daily progress for all missions
  Future<void> _resetDailyProgress() async {
    try {
      final cacheKey = '$CACHE_KEY_PREFIX$_userId';
      await _prefs.remove(cacheKey);

      state = state.copyWith(
        userProgress: {},
        totalCoinsToday: 0,
      );
    } catch (e) {
      // Reset failed; continue with current state
    }
  }

  /// Check if missions should be reset (based on RESET_HOUR)
  bool _shouldResetMissions(DateTime lastReset, DateTime now) {
    if (lastReset.year != now.year ||
        lastReset.month != now.month ||
        lastReset.day != now.day) {
      // Different day
      return true;
    }

    if (now.hour >= RESET_HOUR && lastReset.hour < RESET_HOUR) {
      // Crossed reset hour today
      return true;
    }

    return false;
  }

  /// Get last reset date from cache
  DateTime _getLastResetDate() {
    final resetDateKey = '${RESET_DATE_KEY_PREFIX}_$_userId';
    final cached = _prefs.getString(resetDateKey);
    if (cached != null) {
      return DateTime.parse(cached);
    }
    return _getResetDateForNow();
  }

  /// Set last reset date in cache
  void _setLastResetDate(DateTime date) {
    final resetDateKey = '${RESET_DATE_KEY_PREFIX}_$_userId';
    _prefs.setString(resetDateKey, date.toIso8601String());
  }

  /// Calculate today's reset date (5:00 AM)
  DateTime _getResetDateForNow() {
    final now = DateTime.now();
    if (now.hour < RESET_HOUR) {
      // Before 5 AM; reset was yesterday
      return DateTime(now.year, now.month, now.day - 1, RESET_HOUR);
    }
    return DateTime(now.year, now.month, now.day, RESET_HOUR);
  }

  /// Format date as YYYY_MM_DD for Firestore doc ID
  String _formatDate(DateTime date) {
    return '${date.year}_${date.month.toString().padLeft(2, '0')}_${date.day.toString().padLeft(2, '0')}';
  }

  /// Get default missions for an app (fallback)
  List<DailyMission> _getDefaultMissions(String appId) {
    // Default morning 5-problem challenge
    return [
      DailyMission(
        missionId: 'morning_5problems',
        title: '朝の5問チャレンジ',
        description: '毎朝5問クイズに挑戦しよう',
        targetValue: 5,
        unit: '問',
        subject: appId,
        reward: const MissionReward(
          type: RewardType.coins,
          amount: 50,
        ),
        resetTime: DateTime.now(),
        enabled: true,
        appIds: [appId],
      ),
    ];
  }
}

/// Riverpod provider for daily mission notifier
final dailyMissionProvider =
    StateNotifierProvider<DailyMissionNotifier, DailyMissionState>((ref) {
  return DailyMissionNotifier();
});

/// Get active daily missions for UI display
final activeDailyMissionsProvider = Provider<List<DailyMissionListItem>>((ref) {
  final notifier = ref.watch(dailyMissionProvider.notifier);
  return notifier.getActiveMissions();
});

/// Get total coins earned from daily missions today
final dailyMissionCoinsProvider = Provider<int>((ref) {
  final state = ref.watch(dailyMissionProvider);
  return state.totalCoinsToday;
});
