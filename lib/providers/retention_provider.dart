import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import '../models/notification_model.dart';

class RetentionNotifier extends StateNotifier<RetentionMetrics?> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RetentionNotifier() : super(null);

  /// ユーザーのリテンション分析を更新
  Future<void> updateRetentionMetrics({
    required String userId,
    required int daysActive,
    required int consecutiveActiveStreak,
    required int daysSinceLastActive,
    required int notificationClickRate,
    required int totalNotificationsSent,
  }) async {
    try {
      final churnRiskScore = _calculateChurnRiskScore(
        daysActive,
        consecutiveActiveStreak,
        daysSinceLastActive,
        notificationClickRate,
        totalNotificationsSent,
      );

      final riskLevel = _determineRiskLevel(churnRiskScore);
      final recommendedActions =
          _generateRetentionActions(churnRiskScore, daysActive);

      final metrics = RetentionMetrics(
        userId: userId,
        daysActive: daysActive,
        consecutiveActiveStreak: consecutiveActiveStreak,
        lastActiveDate: DateTime.now().subtract(Duration(days: daysSinceLastActive)),
        daysSinceLastActive: daysSinceLastActive,
        churnRiskScore: churnRiskScore,
        riskLevel: riskLevel,
        recommendedRetentionActions: recommendedActions,
        notificationClickRate: notificationClickRate,
        totalNotificationsSent: totalNotificationsSent,
        analyzedAt: DateTime.now(),
      );

      await _firestore
          .collection('analytics/retention/user_metrics')
          .doc(userId)
          .set(metrics.toJson(), SetOptions(merge: true));

      state = metrics;
    } catch (e) {
      throw Exception('Failed to update retention metrics: $e');
    }
  }

  /// チャーン予防アクションをスケジュール
  Future<void> scheduleRetentionAction({
    required String userId,
    required String actionType,
    required String actionValue,
    required DateTime scheduledAt,
  }) async {
    try {
      final actionId = _firestore.collection('dummy').doc().id;
      final action = RetentionAction(
        actionId: actionId,
        userId: userId,
        actionType: actionType,
        actionValue: actionValue,
        scheduledAt: scheduledAt,
        wasExecuted: false,
        executedAt: null,
        result: null,
      );

      await _firestore
          .collection('analytics/retention/user_actions')
          .doc(userId)
          .collection('actions')
          .doc(actionId)
          .set(action.toJson());
    } catch (e) {
      throw Exception('Failed to schedule retention action: $e');
    }
  }

  /// ユーザーにリターゲティング通知を送信
  Future<void> sendReEngagementNotification({
    required String userId,
    required String title,
    required String body,
  }) async {
    try {
      await _firestore
          .collection('analytics/notifications/re_engagement_queue')
          .doc(userId)
          .set({
        'userId': userId,
        'title': title,
        'body': body,
        'type': 're_engagement',
        'createdAt': DateTime.now(),
        'wasProcessed': false,
      }, SetOptions(merge: true));
    } catch (e) {
      throw Exception('Failed to send re-engagement notification: $e');
    }
  }

  /// グローバルリテンション統計を更新
  Future<void> updateGlobalRetentionStats() async {
    try {
      final snapshot = await _firestore
          .collection('analytics/retention/user_metrics')
          .get();

      int activeUsers = 0;
      int riskUsers = 0;
      int churnedUsers = 0;
      double totalRetentionRate = 0.0;
      double totalChurnRiskScore = 0.0;

      for (final doc in snapshot.docs) {
        final metrics = RetentionMetrics.fromJson(doc.data());
        if (metrics.daysSinceLastActive <= 1) {
          activeUsers++;
        }
        if (metrics.churnRiskScore >= 0.7) {
          riskUsers++;
        }
        if (metrics.daysSinceLastActive > 30) {
          churnedUsers++;
        }
        totalRetentionRate += (1.0 - metrics.churnRiskScore);
        totalChurnRiskScore += metrics.churnRiskScore;
      }

      final stats = {
        'totalUsers': snapshot.docs.length,
        'activeUsers': activeUsers,
        'riskUsers': riskUsers,
        'churnedUsers': churnedUsers,
        'avgRetentionRate': snapshot.docs.isEmpty
            ? 0.0
            : totalRetentionRate / snapshot.docs.length,
        'avgChurnRiskScore': snapshot.docs.isEmpty
            ? 0.0
            : totalChurnRiskScore / snapshot.docs.length,
        'sampledAt': DateTime.now(),
      };

      await _firestore
          .collection('analytics/retention/global_stats')
          .doc('latest')
          .set(stats, SetOptions(merge: true));
    } catch (e) {
      throw Exception('Failed to update global retention stats: $e');
    }
  }

  // チャーンリスクスコア計算（0.0-1.0）
  double _calculateChurnRiskScore(
    int daysActive,
    int consecutiveStreak,
    int daysSinceLastActive,
    int clickRate,
    int totalSent,
  ) {
    double score = 0.0;

    // 非アクティブ期間の影響（0.4まで）
    if (daysSinceLastActive > 30) score += 0.4;
    else if (daysSinceLastActive > 14) score += 0.25;
    else if (daysSinceLastActive > 7) score += 0.1;

    // 連続ストリークの低下（0.3まで）
    if (consecutiveStreak == 0) score += 0.3;
    else if (consecutiveStreak < 3) score += 0.15;

    // 通知クリック率の低下（0.3まで）
    if (totalSent > 0) {
      final clickThrough = clickRate / totalSent;
      if (clickThrough < 0.1) score += 0.3;
      else if (clickThrough < 0.2) score += 0.15;
    } else if (totalSent > 0) {
      score += 0.2;
    }

    return score.clamp(0.0, 1.0);
  }

  // リスクレベルを判定
  String _determineRiskLevel(double score) {
    if (score >= 0.8) return 'critical';
    if (score >= 0.6) return 'high';
    if (score >= 0.4) return 'medium';
    return 'low';
  }

  // リテンション施策を生成
  List<String> _generateRetentionActions(double churnRiskScore, int daysActive) {
    final actions = <String>[];

    if (churnRiskScore >= 0.8) {
      actions.add('send_exclusive_offer');
      actions.add('schedule_motivational_message');
      actions.add('offer_special_reward');
    } else if (churnRiskScore >= 0.6) {
      actions.add('send_streak_reminder');
      actions.add('highlight_achievements');
    } else if (churnRiskScore >= 0.4) {
      actions.add('send_daily_reminder');
    }

    if (daysActive > 30) {
      actions.add('unlock_premium_trial');
    }

    return actions;
  }
}

// リテンション管理プロバイダー
final retentionNotifierProvider =
    StateNotifierProvider<RetentionNotifier, RetentionMetrics?>((ref) {
  return RetentionNotifier();
});
