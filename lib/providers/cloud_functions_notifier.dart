import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/cloud_functions_model.dart';
import 'package:shared_core/services/cloud_functions_service.dart';

class CloudFunctionsNotifier extends StateNotifier<Map<String, dynamic>> {
  final service = CloudFunctionsService();

  CloudFunctionsNotifier() : super({});

  // 週次レポート自動生成を実行
  Future<void> executeWeeklyReportGeneration() async {
    try {
      state = {'status': 'running', 'function': 'generateWeeklyReports'};
      final result = await service.triggerWeeklyReportGeneration();
      state = {
        'status': 'completed',
        'function': 'generateWeeklyReports',
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'generateWeeklyReports',
        'error': e.toString(),
      };
    }
  }

  // 月次レポート自動生成を実行
  Future<void> executeMonthlyReportGeneration() async {
    try {
      state = {'status': 'running', 'function': 'generateMonthlyReports'};
      final result = await service.triggerMonthlyReportGeneration();
      state = {
        'status': 'completed',
        'function': 'generateMonthlyReports',
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'generateMonthlyReports',
        'error': e.toString(),
      };
    }
  }

  // ユーザーセグメンテーション更新を実行
  Future<void> executeUserSegmentation() async {
    try {
      state = {'status': 'running', 'function': 'updateUserSegmentation'};
      final result = await service.updateUserSegmentation();
      state = {
        'status': 'completed',
        'function': 'updateUserSegmentation',
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'updateUserSegmentation',
        'error': e.toString(),
      };
    }
  }

  // コホート分析更新を実行
  Future<void> executeCohortAnalysis() async {
    try {
      state = {'status': 'running', 'function': 'updateCohortAnalytics'};
      final result = await service.updateCohortAnalysis();
      state = {
        'status': 'completed',
        'function': 'updateCohortAnalytics',
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'updateCohortAnalytics',
        'error': e.toString(),
      };
    }
  }

  // チャーン予測を実行
  Future<void> executeChurnPrediction() async {
    try {
      state = {'status': 'running', 'function': 'predictChurnRisk'};
      final result = await service.predictChurnRisk();
      state = {
        'status': 'completed',
        'function': 'predictChurnRisk',
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'predictChurnRisk',
        'error': e.toString(),
      };
    }
  }

  // 特定のユーザーのセグメンテーション更新
  Future<void> updateSegmentationForUser(String userId) async {
    try {
      state = {
        'status': 'running',
        'function': 'updateUserSegmentationForUser',
        'userId': userId,
      };
      final result = await service.updateUserSegmentationForUser(userId);
      state = {
        'status': 'completed',
        'function': 'updateUserSegmentationForUser',
        'userId': userId,
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'updateUserSegmentationForUser',
        'userId': userId,
        'error': e.toString(),
      };
    }
  }

  // 特定のユーザーのチャーン予測
  Future<void> predictChurnRiskForUser(String userId) async {
    try {
      state = {
        'status': 'running',
        'function': 'predictChurnRiskForUser',
        'userId': userId,
      };
      final result = await service.predictChurnRiskForUser(userId);
      state = {
        'status': 'completed',
        'function': 'predictChurnRiskForUser',
        'userId': userId,
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'predictChurnRiskForUser',
        'userId': userId,
        'error': e.toString(),
      };
    }
  }

  // リアルタイム通知を送信
  Future<void> sendNotification({
    required String userId,
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) async {
    try {
      state = {
        'status': 'running',
        'function': 'sendNotification',
        'userId': userId,
      };
      final result = await service.sendNotification(
        userId: userId,
        title: title,
        body: body,
        data: data,
      );
      state = {
        'status': 'completed',
        'function': 'sendNotification',
        'userId': userId,
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'sendNotification',
        'userId': userId,
        'error': e.toString(),
      };
    }
  }

  // 人口統計を更新
  Future<void> updatePopulationStatistics() async {
    try {
      state = {'status': 'running', 'function': 'updatePopulationStats'};
      final result = await service.updatePopulationStats();
      state = {
        'status': 'completed',
        'function': 'updatePopulationStats',
        'result': result,
      };
    } catch (e) {
      state = {
        'status': 'failed',
        'function': 'updatePopulationStats',
        'error': e.toString(),
      };
    }
  }
}

final cloudFunctionsNotifier =
    StateNotifierProvider<CloudFunctionsNotifier, Map<String, dynamic>>(
  (ref) => CloudFunctionsNotifier(),
);
