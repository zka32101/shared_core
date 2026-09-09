import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/mission_model.dart';

/// ミッション進捗状態
class MissionState {
  final List<MissionListItem> missions;
  final bool isLoading;
  final String? error;
  final int totalCoinsToday;   // 本日獲得できるコイン合計

  const MissionState({
    required this.missions,
    this.isLoading = false,
    this.error,
    this.totalCoinsToday = 0,
  });

  static const empty = MissionState(missions: []);

  MissionState copyWith({
    List<MissionListItem>? missions,
    bool? isLoading,
    String? error,
    int? totalCoinsToday,
    bool clearError = false,
  }) =>
      MissionState(
        missions: missions ?? this.missions,
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
        totalCoinsToday: totalCoinsToday ?? this.totalCoinsToday,
      );
}

/// ミッション進捗管理
class MissionNotifier extends Notifier<MissionState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late SharedPreferences _prefs;

  /// ローカルキャッシュキー
  String _getCacheKey(String userId) => 'missions_cache_$userId';
  String _getLastResetKey(String userId) => 'missions_last_reset_$userId';

  @override
  MissionState build() => MissionState.empty;

  /// ミッションを初期化・読み込み
  Future<void> initializeMissions(String userId) async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      _prefs = await SharedPreferences.getInstance();

      // ローカルキャッシュから取得
      await _loadFromCache(userId);

      // Firestore から同期
      await _loadFromFirestore(userId);

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// ローカルキャッシュから読み込み
  Future<void> _loadFromCache(String userId) async {
    try {
      final cached = _prefs.getStringList(_getCacheKey(userId)) ?? [];
      if (cached.isEmpty) return;

      final missions = <MissionListItem>[];
      for (final mission in ALL_MISSIONS) {
        // キャッシュに該当ミッションがあれば取得
        // (簡略化: 本来は JSON デシリアライズが必要)
        missions.add(
          MissionListItem(
            mission: mission,
            progress: null,
            isLocked: false,
            progressPercentage: 0.0,
          ),
        );
      }

      state = state.copyWith(missions: missions);
    } catch (e) {
      // キャッシュエラーは無視して続行
    }
  }

  /// Firestore から同期
  Future<void> _loadFromFirestore(String userId) async {
    try {
      final snapshot = await _firestore
          .collection('user_missions')
          .doc(userId)
          .get();

      if (!snapshot.exists) {
        // ユーザーミッション初期化
        await _firestore
            .collection('user_missions')
            .doc(userId)
            .set({'initialized': true, 'createdAt': FieldValue.serverTimestamp()});
      }

      // ミッション一覧を構築
      final missions = <MissionListItem>[];
      for (final mission in ALL_MISSIONS) {
        final progress = await _getProgress(userId, mission.missionId);
        final isLocked = _isLocked(mission);
        final progressPercentage = progress != null
            ? (progress.currentValue / mission.targetValue * 100).clamp(0, 100)
            : 0.0;

        missions.add(
          MissionListItem(
            mission: mission,
            progress: progress,
            isLocked: isLocked,
            progressPercentage: progressPercentage,
          ),
        );
      }

      // 本日獲得可能なコイン合計を計算
      int totalCoins = 0;
      for (final item in missions) {
        if (!item.isLocked && !item.mission.enabled) continue;
        for (final reward in item.mission.rewards) {
          if (reward.type == RewardType.coins) {
            totalCoins += reward.amount;
          }
        }
      }

      state = state.copyWith(missions: missions, totalCoinsToday: totalCoins);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// ミッション進捗を取得
  Future<UserMissionProgress?> _getProgress(
    String userId,
    String missionId,
  ) async {
    try {
      final snapshot = await _firestore
          .collection('user_mission_progress')
          .doc('${userId}_$missionId')
          .get();

      if (!snapshot.exists) return null;

      return UserMissionProgress.fromJson(snapshot.data()!);
    } catch (e) {
      return null;
    }
  }

  /// ミッションがロックされているか確認
  bool _isLocked(Mission mission) {
    for (final requiredBadgeId in mission.requiredBadges) {
      // 本来は BadgeProvider から獲得バッジをチェック
      // 簡略化のため常に false
    }
    return false;
  }

  /// クイズ完了時に自動検出・進捗更新
  Future<void> detectMissionProgress({
    required String userId,
    required String subject,
    required int questionsCorrect,
    required bool isPerfectStreak,
  }) async {
    try {
      // 該当ミッションを検出
      for (final mission in ALL_MISSIONS) {
        // 教科フィルタ
        if (mission.subject != null && mission.subject != subject) continue;

        // ミッションタイプ別に進捗更新
        await _updateMissionProgress(
          userId: userId,
          mission: mission,
          increment: questionsCorrect,
          isPerfectStreak: isPerfectStreak,
        );
      }

      // 状態を再読込
      await initializeMissions(userId);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// ミッション進捗を更新
  Future<void> _updateMissionProgress({
    required String userId,
    required Mission mission,
    required int increment,
    required bool isPerfectStreak,
  }) async {
    try {
      final docId = '${userId}_${mission.missionId}';
      final now = DateTime.now();

      final existingProgress = await _firestore
          .collection('user_mission_progress')
          .doc(docId)
          .get();

      UserMissionProgress progress;

      if (!existingProgress.exists) {
        // 新規作成
        progress = UserMissionProgress(
          userId: userId,
          missionId: mission.missionId,
          currentValue: increment,
          completed: increment >= mission.targetValue,
          lastResetDate: now,
          createdAt: now,
          completedAt:
              increment >= mission.targetValue ? now : null,
        );
      } else {
        // 既存の進捗を更新
        final existing = UserMissionProgress.fromJson(existingProgress.data()!);

        // リピート可能ミッションは毎日リセット
        bool needsReset =
            mission.repeatable && _isNewDay(existing.lastResetDate, now);

        progress = existing.copyWith(
          currentValue: needsReset ? increment : existing.currentValue + increment,
          completed: (needsReset ? increment : existing.currentValue + increment) >=
              mission.targetValue,
          lastResetDate: needsReset ? now : existing.lastResetDate,
          completedAt:
              (needsReset ? increment : existing.currentValue + increment) >=
                      mission.targetValue
                  ? now
                  : existing.completedAt,
        );
      }

      // Firestore に保存
      await _firestore
          .collection('user_mission_progress')
          .doc(docId)
          .set(progress.toJson());
    } catch (e) {
      // ログ出力（実装時に改善）
    }
  }

  /// 新しい日か確認
  bool _isNewDay(DateTime lastReset, DateTime now) {
    return lastReset.year != now.year ||
        lastReset.month != now.month ||
        lastReset.day != now.day;
  }

  /// ミッション達成時の報酬を付与
  Future<Map<String, int>> awardMissionRewards({
    required String userId,
    required String missionId,
  }) async {
    try {
      final mission = ALL_MISSIONS.firstWhere(
        (m) => m.missionId == missionId,
        orElse: () => throw Exception('Mission not found'),
      );

      Map<String, int> rewards = {};

      for (final reward in mission.rewards) {
        switch (reward.type) {
          case RewardType.coins:
            rewards['coins'] = reward.amount;
            // CoinProvider に委譲して実装
            break;
          case RewardType.badges:
            rewards['badges'] = 1;
            // BadgeProvider に委譲して実装
            break;
          case RewardType.characterExp:
            rewards['characterExp'] = reward.amount;
            // CharacterStateProvider に委譲して実装
            break;
          case RewardType.items:
            rewards['items'] = 1;
            // InventoryProvider に委譲して実装
            break;
        }
      }

      return rewards;
    } catch (e) {
      return {};
    }
  }

  /// 本日のミッションをリセット（毎日 00:00 に自動実行）
  Future<void> resetDailyMissions(String userId) async {
    try {
      final now = DateTime.now();
      for (final mission in ALL_MISSIONS) {
        if (!mission.repeatable) continue;

        final docId = '${userId}_${mission.missionId}';
        await _firestore
            .collection('user_mission_progress')
            .doc(docId)
            .update({
          'currentValue': 0,
          'completed': false,
          'lastResetDate': now,
          'completedAt': null,
        });
      }

      await initializeMissions(userId);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

/// ミッション Provider
final missionProvider =
    NotifierProvider<MissionNotifier, MissionState>(
      () => MissionNotifier(),
    );

/// 特定ミッションの進捗 (リアルタイム)
final missionProgressProvider = StreamProvider.family<UserMissionProgress?, String>(
  (ref, missionId) {
    // 本来は userId も必要。実装時に修正
    final userId = 'current_user'; // TODO: 実装時に修正
    return FirebaseFirestore.instance
        .collection('user_mission_progress')
        .doc('${userId}_$missionId')
        .snapshots()
        .map((snapshot) {
      if (!snapshot.exists) return null;
      return UserMissionProgress.fromJson(snapshot.data()!);
    });
  },
);
