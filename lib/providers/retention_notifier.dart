import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/retention_model.dart';

/// リテンション状態管理
class RetentionNotifier extends StateNotifier<RetentionState> {
  RetentionNotifier() : super(const RetentionState());

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// デイリーミッション生成（毎日午前0時）
  Future<void> generateDailyMissions(List<DailyMission> missions) async {
    try {
      final userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) return;

      final today = DateTime.now();
      final todayKey =
          '${today.year}${today.month.toString().padLeft(2, '0')}${today.day.toString().padLeft(2, '0')}';

      await _firestore
          .collection('users')
          .doc(userId)
          .collection('daily_missions')
          .doc('daily_mission_$todayKey')
          .set({
            'missions': missions.map((m) => m.toJson()).toList(),
            'generatedAt': FieldValue.serverTimestamp(),
          });

      state = state.copyWith(todayMissions: missions);
    } catch (e) {
      debugPrint('Error generating daily missions: $e');
      state = state.copyWith(error: 'ミッション生成に失敗しました');
    }
  }

  /// ミッション進捗更新
  Future<void> updateMissionProgress(String missionId, int newProgress) async {
    try {
      final userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) return;

      final today = DateTime.now();
      final todayKey =
          '${today.year}${today.month.toString().padLeft(2, '0')}${today.day.toString().padLeft(2, '0')}';

      final doc = await _firestore
          .collection('users')
          .doc(userId)
          .collection('daily_missions')
          .doc('daily_mission_$todayKey')
          .get();

      if (doc.exists) {
        final data = doc.data() as Map<String, dynamic>;
        final missions = (data['missions'] as List)
            .map((m) => DailyMission.fromJson(m as Map<String, dynamic>))
            .toList();

        // 対象ミッションを更新
        final updatedMissions = missions.map((m) {
          if (m.id == missionId) {
            final newMission = m.copyWith(currentProgress: newProgress);
            // 目標達成時に完了フラグを立てる
            if (newProgress >= m.targetValue && !m.isCompleted) {
              return newMission.copyWith(
                isCompleted: true,
                completedAt: DateTime.now(),
              );
            }
            return newMission;
          }
          return m;
        }).toList();

        await _firestore
            .collection('users')
            .doc(userId)
            .collection('daily_missions')
            .doc('daily_mission_$todayKey')
            .update({
              'missions': updatedMissions.map((m) => m.toJson()).toList(),
            });

        state = state.copyWith(todayMissions: updatedMissions);
      }
    } catch (e) {
      debugPrint('Error updating mission progress: $e');
      state = state.copyWith(error: 'ミッション更新に失敗しました');
    }
  }

  /// 学習活動を記録（ストリーク更新）
  Future<void> recordLearningActivity() async {
    try {
      final userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) return;

      final now = DateTime.now();

      final streakDoc = await _firestore
          .collection('users')
          .doc(userId)
          .collection('progress')
          .doc('streak_data')
          .get();

      int currentStreak = 0;
      int longestStreak = 0;
      int totalStreakCoins = 0;
      DateTime lastActivity = DateTime(1970);

      if (streakDoc.exists) {
        currentStreak = streakDoc['currentStreak'] ?? 0;
        longestStreak = streakDoc['longestStreak'] ?? 0;
        totalStreakCoins = streakDoc['totalStreakCoins'] ?? 0;
        final lastActivityTs = streakDoc['lastActivityAt'];
        if (lastActivityTs != null) {
          lastActivity = (lastActivityTs as Timestamp).toDate();
        }
      }

      // 新しいストリーク日か判定
      final daysSinceLastActivity = now.difference(lastActivity).inDays;
      final previousStreak = currentStreak;

      if (daysSinceLastActivity > 1) {
        currentStreak = 1; // ストリーク切断 → 1日から開始
      } else if (daysSinceLastActivity == 1) {
        currentStreak += 1; // ストリーク継続
      }

      // 最長ストリークを更新
      if (currentStreak > longestStreak) {
        longestStreak = currentStreak;
      }

      // ストリークコインを加算（1日あたり10コイン上限100）
      if (daysSinceLastActivity >= 1) {
        totalStreakCoins += (currentStreak * 10).clamp(0, 100);
      }

      // Firestore に保存
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('progress')
          .doc('streak_data')
          .set({
            'userId': userId,
            'currentStreak': currentStreak,
            'longestStreak': longestStreak,
            'lastActivityAt': FieldValue.serverTimestamp(),
            'totalStreakCoins': totalStreakCoins,
            'updatedAt': FieldValue.serverTimestamp(),
          }, SetOptions(merge: true));

      // ストリーク達成バッジをチェック
      await _checkStreakMilestones(userId, currentStreak);

      state = state.copyWith(
        currentStreak: currentStreak,
        longestStreak: longestStreak,
        totalStreakCoins: totalStreakCoins,
      );
    } catch (e) {
      debugPrint('Error recording learning activity: $e');
      state = state.copyWith(error: '学習記録に失敗しました');
    }
  }

  /// ストリーク達成マイルストーンをチェック
  Future<void> _checkStreakMilestones(String userId, int currentStreak) async {
    final milestones = [7, 30, 100, 365];
    for (final milestone in milestones) {
      if (currentStreak == milestone) {
        // マイルストーン達成バッジを記録
        try {
          await _firestore
              .collection('users')
              .doc(userId)
              .collection('progress')
              .doc('streak_data')
              .update({
                'streakBadges': FieldValue.arrayUnion(['streak_$milestone']),
              });
        } catch (e) {
          debugPrint('Error updating streak badge: $e');
        }
      }
    }
  }

  /// 週間ボーナス完成チェック
  Future<void> checkWeeklyBonusCompletion() async {
    try {
      final userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) return;

      final now = DateTime.now();
      final yearStart = DateTime(now.year);
      final weekNumber =
          ((now.millisecondsSinceEpoch - yearStart.millisecondsSinceEpoch) ~/
              (7 * 24 * 60 * 60 * 1000)) +
          1;

      final weeklyDoc = await _firestore
          .collection('users')
          .doc(userId)
          .collection('retention')
          .doc('weekly_bonus_w$weekNumber')
          .get();

      if (weeklyDoc.exists) {
        final completedDays = weeklyDoc['completedDays'] ?? 0;
        if (completedDays == 7) {
          // 週間完成！ボーナス付与
          await _awardWeeklyCompletionBonus(userId);
        }
      }
    } catch (e) {
      debugPrint('Error checking weekly bonus: $e');
    }
  }

  /// 週間完成ボーナス付与
  Future<void> _awardWeeklyCompletionBonus(String userId) async {
    try {
      const bonusCoins = 500;

      // コイン加算
      final userDoc = await _firestore
          .collection('users')
          .doc(userId)
          .collection('progress')
          .doc('coins')
          .get();

      int currentCoins = 0;
      if (userDoc.exists) {
        currentCoins = userDoc['amount'] ?? 0;
      }

      await _firestore
          .collection('users')
          .doc(userId)
          .collection('progress')
          .doc('coins')
          .set({
            'amount': currentCoins + bonusCoins,
            'updatedAt': FieldValue.serverTimestamp(),
          }, SetOptions(merge: true));

      debugPrint('Weekly bonus awarded: +$bonusCoins coins');
    } catch (e) {
      debugPrint('Error awarding weekly bonus: $e');
    }
  }

  /// リテンション状態をリセット
  void resetState() {
    state = const RetentionState();
  }
}

/// リテンション NotifierProvider
final retentionNotifierProvider =
    StateNotifierProvider<RetentionNotifier, RetentionState>((ref) {
  return RetentionNotifier();
});
