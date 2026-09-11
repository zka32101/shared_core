import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'dart:convert';
import 'dart:math';
import '../models/ab_test_model.dart';

// RemoteConfig から AB テスト設定取得
final abTestConfigProvider = FutureProvider<Map<String, ABTestConfig>>((ref) async {
  try {
    final remoteConfig = FirebaseRemoteConfig.instance;
    final configJson = remoteConfig.getString('ab_tests_config');

    if (configJson.isEmpty) return {};

    final decoded = jsonDecode(configJson) as Map<String, dynamic>;
    return decoded.map((key, value) {
      return MapEntry(key, ABTestConfig.fromJson(value as Map<String, dynamic>));
    });
  } catch (e) {
    debugPrint('Error loading AB test config: $e');
    return {};
  }
});

// ユーザーの AB テスト割り当て取得
final userABTestAssignmentsProvider =
    FutureProvider.autoDispose<Map<String, TestVariant>>((ref) async {
  try {
    final userId = FirebaseAuth.instance.currentUser?.uid ?? '';
    if (userId.isEmpty) return {};

    final firestore = FirebaseFirestore.instance;
    final doc = await firestore
        .collection('users')
        .doc(userId)
        .collection('ab_test_assignments')
        .doc('assignments')
        .get();

    if (doc.exists) {
      final data = doc.data() as Map<String, dynamic>;
      return Map<String, TestVariant>.from(
        data.map((key, value) => MapEntry(
          key,
          TestVariant.values.byName(value as String)
        ))
      );
    }

    // 割り当てがない場合、新規作成
    final configs = await ref.watch(abTestConfigProvider.future);
    final assignments = <String, TestVariant>{};

    for (final config in configs.values) {
      if (config.isActive) {
        assignments[config.testId] = _assignVariant(config);
      }
    }

    // Firestore に保存
    if (assignments.isNotEmpty) {
      await firestore
          .collection('users')
          .doc(userId)
          .collection('ab_test_assignments')
          .doc('assignments')
          .set(assignments.map((k, v) => MapEntry(k, v.name)));
    }

    return assignments;
  } catch (e) {
    debugPrint('Error loading user AB test assignments: $e');
    return {};
  }
});

// テスト結果リアルタイム監視
final abTestResultsProvider = StreamProvider.autoDispose<Map<String, ABTestResult>>((ref) async* {
  try {
    final firestore = FirebaseFirestore.instance;

    yield* firestore
        .collection('analytics')
        .doc('ab_tests')
        .collection('results')
        .snapshots()
        .map((snapshot) {
          return {
            for (final doc in snapshot.docs)
              doc.id: ABTestResult.fromJson(doc.data())
          };
        });
  } catch (e) {
    debugPrint('Error streaming AB test results: $e');
    yield {};
  }
});

// ユーザー母集団統計
final populationStatsProvider = StreamProvider.autoDispose<PopulationStats>((ref) async* {
  try {
    final firestore = FirebaseFirestore.instance;

    yield* firestore
        .collection('analytics')
        .doc('population')
        .snapshots()
        .map((doc) {
          if (doc.exists) {
            return PopulationStats.fromJson(doc.data() as Map<String, dynamic>);
          }
          return PopulationStats(
            totalUsers: 0,
            activeUsers: 0,
            churned: 0,
            churnRate: 0.0,
            segmentDistribution: {},
            sampledAt: DateTime.now(),
          );
        });
  } catch (e) {
    debugPrint('Error streaming population stats: $e');
    yield PopulationStats(
      totalUsers: 0,
      activeUsers: 0,
      churned: 0,
      churnRate: 0.0,
      segmentDistribution: {},
      sampledAt: DateTime.now(),
    );
  }
});

// ユーザーの特定テスト割り当て取得
final userTestVariantProvider =
    FutureProvider.autoDispose.family<TestVariant?, String>((ref, testId) async {
  try {
    final assignments = await ref.watch(userABTestAssignmentsProvider.future);
    return assignments[testId];
  } catch (e) {
    debugPrint('Error loading user test variant: $e');
    return null;
  }
});

// ==========================================

// AB テスト割り当てロジック（Sticky で一貫性を保つ）
TestVariant _assignVariant(ABTestConfig config) {
  final random = Random();
  final rand = random.nextDouble();

  double cumulative = 0.0;
  for (final variant in config.variants) {
    cumulative += config.trafficAllocation[variant] ?? 0.0;
    if (rand < cumulative) {
      return variant;
    }
  }

  return config.variants.first;
}
