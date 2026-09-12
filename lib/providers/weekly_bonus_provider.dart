import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/daily_mission_model.dart';

/// Handler for weekly bonus persistence (Firestore, etc.)
typedef WeeklyBonusPersistHandler = Future<void> Function(String userId, WeeklyBonus bonus);

/// State for weekly bonus management
class WeeklyBonusState {
  final WeeklyBonus? currentBonus;
  final bool isLoading;
  final String? error;

  WeeklyBonusState({
    this.currentBonus,
    this.isLoading = false,
    this.error,
  });

  WeeklyBonusState copyWith({
    WeeklyBonus? currentBonus,
    bool? isLoading,
    String? error,
  }) {
    return WeeklyBonusState(
      currentBonus: currentBonus ?? this.currentBonus,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

/// Weekly bonus notifier for tracking consecutive daily mission completions
class WeeklyBonusNotifier extends StateNotifier<WeeklyBonusState> {
  static const String CACHE_KEY_PREFIX = 'weekly_bonus_';
  static const int WEEKLY_BONUS_COINS = 500;
  static const int CONSECUTIVE_DAYS_TARGET = 7;

  late SharedPreferences _prefs;
  late String _userId;
  WeeklyBonusPersistHandler? _persistHandler;

  WeeklyBonusNotifier() : super(WeeklyBonusState());

  /// Initialize weekly bonus tracking for the current user
  Future<void> initializeWeeklyBonus(String userId) async {
    state = state.copyWith(isLoading: true);
    _userId = userId;

    try {
      _prefs = await SharedPreferences.getInstance();

      // Load from cache
      final cached = _loadFromCache();
      if (cached != null) {
        // Check if week has reset
        final now = DateTime.now();
        if (_hasWeekReset(cached.resetDate, now)) {
          // Reset weekly bonus
          final reset = _resetWeekly(cached, now);
          state = state.copyWith(currentBonus: reset, isLoading: false);
          await _saveToCache(reset);
          await _persist(reset);
        } else {
          state = state.copyWith(currentBonus: cached, isLoading: false);
        }
      } else {
        // Create new weekly bonus
        final newBonus = _createNewWeekly(userId);
        state = state.copyWith(currentBonus: newBonus, isLoading: false);
        await _saveToCache(newBonus);
        await _persist(newBonus);
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to initialize weekly bonus: $e',
      );
    }
  }

  /// Set persistence handler for app-specific storage (Firestore, etc.)
  void setPersistHandler(WeeklyBonusPersistHandler handler) {
    _persistHandler = handler;
  }

  /// Record daily mission completion and update weekly streak
  Future<void> recordDailyCompletion() async {
    try {
      final current = state.currentBonus;
      if (current == null) {
        throw Exception('Weekly bonus not initialized');
      }

      final now = DateTime.now();
      final dayOfWeek = _getDayOfWeek(now); // 0=Mon, 6=Sun

      // Check if already completed today
      if (_wasCompletedToday(current, now)) {
        return; // Already counted today
      }

      // Check if consecutive streak continues
      final updatedDays = List<int>.from(current.completionDaysOfWeek);
      updatedDays[dayOfWeek] = 1; // Mark today as completed

      // Calculate consecutive days from today backwards
      final consecutive = _calculateConsecutiveDays(updatedDays, dayOfWeek);

      final updated = current.copyWith(
        consecutiveDays: consecutive,
        lastCompletionDate: now,
        completionDaysOfWeek: updatedDays,
      );

      state = state.copyWith(currentBonus: updated);
      await _saveToCache(updated);
      await _persist(updated);
    } catch (e) {
      state = state.copyWith(error: 'Failed to record completion: $e');
    }
  }

  /// Claim weekly bonus (7-day streak)
  Future<int> claimWeeklyBonus() async {
    try {
      final current = state.currentBonus;
      if (current == null || current.consecutiveDays < CONSECUTIVE_DAYS_TARGET) {
        return 0; // Cannot claim
      }

      if (current.bonusClaimedThisWeek) {
        return 0; // Already claimed
      }

      final updated = current.copyWith(
        bonusClaimedThisWeek: true,
        totalWeeklyBonus: WEEKLY_BONUS_COINS,
      );

      state = state.copyWith(currentBonus: updated);
      await _saveToCache(updated);
      await _persist(updated);

      return WEEKLY_BONUS_COINS;
    } catch (e) {
      state = state.copyWith(error: 'Failed to claim bonus: $e');
      return 0;
    }
  }

  /// Get days until next bonus milestone
  int getDaysUntilBonus() {
    final current = state.currentBonus;
    if (current == null) return CONSECUTIVE_DAYS_TARGET;
    return (CONSECUTIVE_DAYS_TARGET - current.consecutiveDays).clamp(0, 7);
  }

  /// Get visual representation of this week's completion (emoji/icons)
  List<String> getWeekCompletionEmojis() {
    final current = state.currentBonus;
    if (current == null) return List.filled(7, '⭕');

    return List.generate(7, (index) {
      return current.completionDaysOfWeek[index] == 1 ? '✅' : '⭕';
    });
  }

  // ===== Private methods =====

  bool _hasWeekReset(DateTime lastReset, DateTime now) {
    // Reset every Sunday at 5:00 AM
    final sundayOfLastReset = _getLastSunday(lastReset);
    final sundayOfNow = _getLastSunday(now);
    return sundayOfNow.isAfter(sundayOfLastReset);
  }

  DateTime _getLastSunday(DateTime date) {
    // Sunday is day 7 in DateTime (Monday=1, Sunday=7)
    final daysSinceSunday = date.weekday == 7 ? 0 : date.weekday;
    return date.subtract(Duration(days: daysSinceSunday));
  }

  int _getDayOfWeek(DateTime date) {
    // Return 0=Mon, 6=Sun
    return (date.weekday - 1) % 7;
  }

  bool _wasCompletedToday(WeeklyBonus bonus, DateTime now) {
    final dayOfWeek = _getDayOfWeek(now);
    final lastCompletion = bonus.lastCompletionDate;
    final isSameDay = lastCompletion.year == now.year &&
        lastCompletion.month == now.month &&
        lastCompletion.day == now.day;
    return isSameDay && bonus.completionDaysOfWeek[dayOfWeek] == 1;
  }

  int _calculateConsecutiveDays(List<int> days, int todayIndex) {
    // Count backwards from today
    int count = 0;
    for (int i = todayIndex; i >= 0; i--) {
      if (days[i] == 1) {
        count++;
      } else {
        break;
      }
    }
    return count.clamp(0, 7);
  }

  WeeklyBonus _createNewWeekly(String userId) {
    final now = DateTime.now();
    return WeeklyBonus(
      userId: userId,
      consecutiveDays: 0,
      lastCompletionDate: DateTime(1970), // Epoch
      resetDate: _getNextSunday(now),
      completionDaysOfWeek: List.filled(7, 0),
      bonusClaimedThisWeek: false,
      totalWeeklyBonus: 0,
    );
  }

  DateTime _getNextSunday(DateTime date) {
    final daysSinceMonday = (date.weekday - 1) % 7;
    return date.add(Duration(days: 7 - daysSinceMonday));
  }

  WeeklyBonus _resetWeekly(WeeklyBonus bonus, DateTime now) {
    return bonus.copyWith(
      consecutiveDays: 0,
      resetDate: _getNextSunday(now),
      completionDaysOfWeek: List.filled(7, 0),
      bonusClaimedThisWeek: false,
      totalWeeklyBonus: 0,
      lastCompletionDate: DateTime(1970),
    );
  }

  WeeklyBonus? _loadFromCache() {
    try {
      final json = _prefs.getString('$CACHE_KEY_PREFIX$_userId');
      if (json != null) {
        return WeeklyBonus.fromJson(jsonDecode(json) as Map<String, dynamic>);
      }
    } catch (e) {
      debugPrint('Error loading from cache: $e');
    }
    return null;
  }

  Future<void> _saveToCache(WeeklyBonus bonus) async {
    try {
      await _prefs.setString(
        '$CACHE_KEY_PREFIX$_userId',
        jsonEncode(bonus.toJson()),
      );
    } catch (e) {
      debugPrint('Error saving to cache: $e');
    }
  }

  Future<void> _persist(WeeklyBonus bonus) async {
    final handler = _persistHandler;
    if (handler != null) {
      try {
        await handler(_userId, bonus);
      } catch (e) {
        debugPrint('Error persisting to handler: $e');
      }
    }
  }
}

/// Riverpod provider for weekly bonus notifier
final weeklyBonusProvider =
    StateNotifierProvider<WeeklyBonusNotifier, WeeklyBonusState>((ref) {
  return WeeklyBonusNotifier();
});

/// Get consecutive days for UI display
final consecutiveDaysProvider = Provider<int>((ref) {
  final state = ref.watch(weeklyBonusProvider);
  return state.currentBonus?.consecutiveDays ?? 0;
});

/// Get weekly completion emoji visual
final weekCompletionEmojisProvider = Provider<List<String>>((ref) {
  final notifier = ref.watch(weeklyBonusProvider.notifier);
  return notifier.getWeekCompletionEmojis();
});

/// Check if weekly bonus can be claimed
final canClaimWeeklyBonusProvider = Provider<bool>((ref) {
  final state = ref.watch(weeklyBonusProvider);
  final bonus = state.currentBonus;
  return bonus != null &&
      bonus.consecutiveDays >= WeeklyBonusNotifier.CONSECUTIVE_DAYS_TARGET &&
      !bonus.bonusClaimedThisWeek;
});
