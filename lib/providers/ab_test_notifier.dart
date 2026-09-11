import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/ab_test_model.dart';

class ABTestNotifier extends StateNotifier<ABTestState> {
  ABTestNotifier(this._firestore, this._auth) : super(const ABTestState());

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  // テストイベント記録
  Future<void> recordTestEvent({
    required String testId,
    required TestVariant variant,
    required TestMetric metric,
    required int value,
  }) async {
    try {
      final userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) return;

      final event = ABTestEvent(
        userId: userId,
        testId: testId,
        variant: variant,
        metric: metric,
        value: value,
        eventTime: DateTime.now(),
        customData: null,
      );

      await _firestore
          .collection('analytics')
          .doc('ab_tests')
          .collection('events')
          .add(event.toJson());

      // リアルタイム結果更新（集計）
      await _updateTestResults(testId, variant, metric, value);
    } catch (e) {
      debugPrint('Error recording test event: $e');
      state = state.copyWith(error: 'Failed to record event: $e');
    }
  }

  Future<void> _updateTestResults(
    String testId,
    TestVariant variant,
    TestMetric metric,
    int value,
  ) async {
    try {
      final docId = '${testId}_${variant.name}';

      await _firestore.runTransaction((transaction) async {
        final ref = _firestore
            .collection('analytics')
            .doc('ab_tests')
            .collection('results')
            .doc(docId);

        final doc = await transaction.get(ref);

        if (doc.exists) {
          final current = ABTestResult.fromJson(doc.data() as Map<String, dynamic>);

          int impressions = current.impressions;
          int conversions = current.conversions;
          int revenue = current.totalRevenue;

          if (metric == TestMetric.impression) {
            impressions += value;
          } else if (metric == TestMetric.conversion) {
            conversions += value;
            revenue += value;
          } else if (metric == TestMetric.revenue) {
            revenue += value;
          }

          final updated = current.copyWith(
            impressions: impressions,
            conversions: conversions,
            conversionRate: impressions > 0 ? conversions / impressions : 0.0,
            totalRevenue: revenue,
            averageOrderValue: conversions > 0 ? revenue / conversions : 0.0,
            updatedAt: DateTime.now(),
          );

          transaction.set(ref, updated.toJson());
        } else {
          // 新規作成
          final result = ABTestResult(
            testId: testId,
            variant: variant,
            impressions: metric == TestMetric.impression ? value : 0,
            conversions: metric == TestMetric.conversion ? 1 : 0,
            conversionRate: metric == TestMetric.conversion ? 1.0 : 0.0,
            totalRevenue: metric == TestMetric.revenue
                ? value
                : (metric == TestMetric.conversion ? value : 0),
            averageOrderValue:
                metric == TestMetric.conversion ? value.toDouble() : 0.0,
            updatedAt: DateTime.now(),
          );

          transaction.set(ref, result.toJson());
        }
      });

      // ローカルキャッシュも更新
      state = state.copyWith(
        results: {
          ...state.results,
          docId: state.results[docId] ??
              ABTestResult(
                testId: testId,
                variant: variant,
                impressions: 0,
                conversions: 0,
                conversionRate: 0.0,
                totalRevenue: 0,
                averageOrderValue: 0.0,
                updatedAt: DateTime.now(),
              ),
        },
      );
    } catch (e) {
      debugPrint('Error updating test results: $e');
      state = state.copyWith(error: 'Failed to update results: $e');
    }
  }

  // ユーザー母集団統計更新（毎日自動実行）
  Future<void> updatePopulationStats() async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      final usersRef = _firestore.collection('users');
      final allUsers = await usersRef.count().get();

      final now = DateTime.now();
      final thirtyDaysAgo = now.subtract(Duration(days: 30));

      final activeUsers = await usersRef
          .where('lastActivityAt', isGreaterThan: thirtyDaysAgo)
          .count()
          .get();

      final churned = allUsers.count - activeUsers.count;

      // セグメント分布計算
      final segments = {
        'newUser': await _countSegmentUsers('newUser'),
        'inactive': await _countSegmentUsers('inactive'),
        'active': await _countSegmentUsers('active'),
        'vip': await _countSegmentUsers('vip'),
        'churnRisk': await _countSegmentUsers('churnRisk'),
      };

      final stats = PopulationStats(
        totalUsers: allUsers.count,
        activeUsers: activeUsers.count,
        churned: churned,
        churnRate: allUsers.count > 0 ? churned / allUsers.count : 0.0,
        segmentDistribution: segments,
        sampledAt: DateTime.now(),
      );

      await _firestore
          .collection('analytics')
          .doc('population')
          .set(stats.toJson());

      state = state.copyWith(isLoading: false);
    } catch (e) {
      debugPrint('Error updating population stats: $e');
      state = state.copyWith(isLoading: false, error: 'Failed to update stats: $e');
    }
  }

  Future<int> _countSegmentUsers(String segment) async {
    try {
      // UserSegment 判定ロジック（簡略版）
      // 本来は shared_core の UserSegmentNotifier と統合
      final query = _firestore.collection('users').where('segment', isEqualTo: segment);
      final result = await query.count().get();
      return result.count;
    } catch (e) {
      debugPrint('Error counting segment users: $e');
      return 0;
    }
  }
}

final abTestNotifierProvider =
    StateNotifierProvider<ABTestNotifier, ABTestState>((ref) {
  return ABTestNotifier(FirebaseFirestore.instance, FirebaseAuth.instance);
});
