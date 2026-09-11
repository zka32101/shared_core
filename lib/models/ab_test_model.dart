import 'package:freezed_annotation/freezed_annotation.dart';

part 'ab_test_model.freezed.dart';
part 'ab_test_model.g.dart';

enum TestVariant {
  control,        // A
  variant_b,      // B
  variant_c,      // C
}

enum TestMetric {
  impression,     // 表示回数
  click,          // クリック
  conversion,     // 購買成功
  revenue,        // 売上
  churnRate,      // チャーン率
}

@freezed
class ABTestConfig with _$ABTestConfig {
  const factory ABTestConfig({
    required String testId,           // 'ab_test_paywall_v1'
    required String testName,
    required String description,
    required List<TestVariant> variants,
    required DateTime startDate,
    DateTime? endDate,
    required bool isActive,
    required Map<TestVariant, double> trafficAllocation, // {control: 0.5, variant_b: 0.3, variant_c: 0.2}
    required Map<String, dynamic> config,  // テスト設定（Paywall variant など）
  }) = _ABTestConfig;

  factory ABTestConfig.fromJson(Map<String, dynamic> json) =>
      _$ABTestConfigFromJson(json);
}

@freezed
class ABTestAssignment with _$ABTestAssignment {
  const factory ABTestAssignment({
    required String userId,
    required String testId,
    required TestVariant assignedVariant,
    required DateTime assignedAt,
    required bool isSticky,           // ユーザーの割り当てを固定
  }) = _ABTestAssignment;

  factory ABTestAssignment.fromJson(Map<String, dynamic> json) =>
      _$ABTestAssignmentFromJson(json);
}

@freezed
class ABTestEvent with _$ABTestEvent {
  const factory ABTestEvent({
    required String userId,
    required String testId,
    required TestVariant variant,
    required TestMetric metric,
    required int value,               // impression:1, conversion:revenue_amount
    required DateTime eventTime,
    Map<String, dynamic>? customData,
  }) = _ABTestEvent;

  factory ABTestEvent.fromJson(Map<String, dynamic> json) =>
      _$ABTestEventFromJson(json);
}

@freezed
class ABTestResult with _$ABTestResult {
  const factory ABTestResult({
    required String testId,
    required TestVariant variant,
    required int impressions,
    required int conversions,
    required double conversionRate,
    required int totalRevenue,
    required double averageOrderValue,
    required DateTime updatedAt,
  }) = _ABTestResult;

  factory ABTestResult.fromJson(Map<String, dynamic> json) =>
      _$ABTestResultFromJson(json);
}

@freezed
class PopulationStats with _$PopulationStats {
  const factory PopulationStats({
    required int totalUsers,
    required int activeUsers,
    required int churned,
    required double churnRate,
    required Map<String, int> segmentDistribution,  // {newUser: 100, active: 500, vip: 50}
    required DateTime sampledAt,
  }) = _PopulationStats;

  factory PopulationStats.fromJson(Map<String, dynamic> json) =>
      _$PopulationStatsFromJson(json);
}

@freezed
class ABTestState with _$ABTestState {
  const factory ABTestState({
    @Default({}) Map<String, ABTestResult> results,
    @Default({}) Map<String, TestVariant> userAssignments,
    @Default(false) bool isLoading,
    String? error,
  }) = _ABTestState;
}
