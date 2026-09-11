import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:shared_core/models/cloud_functions_model.dart';

// RemoteConfig から Cloud Functions 設定を読み込み
final cloudFunctionsConfigProvider =
    FutureProvider<CloudFunctionConfig>((ref) async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  try {
    final configJson = remoteConfig.getString('cloud_functions_config');
    final decoded = jsonDecode(configJson);
    return CloudFunctionConfig.fromJson(decoded);
  } catch (e) {
    return const CloudFunctionConfig(
      enableAutoReportGeneration: true,
      enableSegmentationUpdates: true,
      enableCohortAnalysis: true,
      enableNotifications: true,
      reportGenerationIntervalDays: 7,
      segmentationUpdateIntervalHours: 24,
      cohortAnalysisIntervalDays: 7,
      notificationConfig: {
        'enableSegmentChangeNotification': true,
        'enableGoalAchievedNotification': true,
        'enableStreakReminder': true,
      },
      enableChurnPrediction: true,
    );
  }
});

// 最新のセグメンテーション結果を監視
final latestSegmentationResultsProvider =
    FutureProvider<List<SegmentationResult>>((ref) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();
  final oneDayAgo = now.subtract(Duration(days: 1));

  final snapshot = await firestore
      .collection('analytics/segmentation/results')
      .where('analyzedAt', isGreaterThan: oneDayAgo)
      .orderBy('analyzedAt', descending: true)
      .limit(100)
      .get();

  return snapshot.docs
      .map((doc) => SegmentationResult.fromJson(doc.data()))
      .toList();
});

// コホート分析結果を取得
final cohortAnalysisProvider = FutureProvider.autoDispose
    .family<CohortAnalysisResult?, String>((ref, cohortId) async {
  final firestore = FirebaseFirestore.instance;
  final doc = await firestore
      .collection('analytics/cohorts')
      .doc(cohortId)
      .get();

  if (!doc.exists) return null;
  return CohortAnalysisResult.fromJson(doc.data()!);
});

// チャーン予測ユーザーを取得
final churnPredictionsProvider =
    FutureProvider<List<ChurnPrediction>>((ref) async {
  final firestore = FirebaseFirestore.instance;
  final now = DateTime.now();
  final sevenDaysAgo = now.subtract(Duration(days: 7));

  final snapshot = await firestore
      .collection('analytics/churn_predictions')
      .where('analyzedAt', isGreaterThan: sevenDaysAgo)
      .where('riskLevel', isEqualTo: 'critical')
      .orderBy('churnRiskScore', descending: true)
      .limit(50)
      .get();

  return snapshot.docs
      .map((doc) => ChurnPrediction.fromJson(doc.data()))
      .toList();
});

// 関数実行ログを取得
final functionExecutionLogsProvider =
    FutureProvider<List<FunctionExecutionLog>>((ref) async {
  final firestore = FirebaseFirestore.instance;
  final sevenDaysAgo = DateTime.now().subtract(Duration(days: 7));

  final snapshot = await firestore
      .collection('analytics/function_logs')
      .where('executedAt', isGreaterThan: sevenDaysAgo)
      .orderBy('executedAt', descending: true)
      .limit(50)
      .get();

  return snapshot.docs
      .map((doc) => FunctionExecutionLog.fromJson(doc.data()))
      .toList();
});
