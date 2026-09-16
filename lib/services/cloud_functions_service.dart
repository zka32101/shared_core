import 'package:cloud_functions/cloud_functions.dart';

/// Phase 4.17: Cloud Functions 管理ダッシュボード用サービス
/// 各 Cloud Function を httpsCallable 経由で呼び出す薄いラッパー。
class CloudFunctionsService {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  Future<dynamic> _call(String name, [Map<String, dynamic>? params]) async {
    final callable = _functions.httpsCallable(name);
    final result = await callable.call(params);
    return result.data;
  }

  Future<dynamic> triggerWeeklyReportGeneration() =>
      _call('generateWeeklyReports');

  Future<dynamic> triggerMonthlyReportGeneration() =>
      _call('generateMonthlyReports');

  Future<dynamic> updateUserSegmentation() => _call('updateUserSegmentation');

  Future<dynamic> updateCohortAnalysis() => _call('updateCohortAnalytics');

  Future<dynamic> predictChurnRisk() => _call('predictChurnRisk');

  Future<dynamic> updateUserSegmentationForUser(String userId) =>
      _call('updateUserSegmentationForUser', {'userId': userId});

  Future<dynamic> predictChurnRiskForUser(String userId) =>
      _call('predictChurnRiskForUser', {'userId': userId});

  Future<dynamic> sendNotification({
    required String userId,
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) =>
      _call('sendNotification', {
        'userId': userId,
        'title': title,
        'body': body,
        'data': data,
      });

  Future<dynamic> updatePopulationStats() => _call('updatePopulationStats');
}
