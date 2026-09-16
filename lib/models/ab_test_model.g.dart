// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ab_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ABTestConfig _$ABTestConfigFromJson(Map<String, dynamic> json) =>
    _ABTestConfig(
      testId: json['testId'] as String,
      testName: json['testName'] as String,
      description: json['description'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => $enumDecode(_$TestVariantEnumMap, e))
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isActive: json['isActive'] as bool,
      trafficAllocation: (json['trafficAllocation'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, (e as num).toDouble())),
      config: json['config'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ABTestConfigToJson(
  _ABTestConfig instance,
) => <String, dynamic>{
  'testId': instance.testId,
  'testName': instance.testName,
  'description': instance.description,
  'variants': instance.variants.map((e) => _$TestVariantEnumMap[e]!).toList(),
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'isActive': instance.isActive,
  'trafficAllocation': instance.trafficAllocation,
  'config': instance.config,
};

const _$TestVariantEnumMap = {
  TestVariant.control: 'control',
  TestVariant.variant_b: 'variant_b',
  TestVariant.variant_c: 'variant_c',
};

_ABTestAssignment _$ABTestAssignmentFromJson(Map<String, dynamic> json) =>
    _ABTestAssignment(
      userId: json['userId'] as String,
      testId: json['testId'] as String,
      assignedVariant: $enumDecode(
        _$TestVariantEnumMap,
        json['assignedVariant'],
      ),
      assignedAt: DateTime.parse(json['assignedAt'] as String),
      isSticky: json['isSticky'] as bool,
    );

Map<String, dynamic> _$ABTestAssignmentToJson(_ABTestAssignment instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'testId': instance.testId,
      'assignedVariant': _$TestVariantEnumMap[instance.assignedVariant]!,
      'assignedAt': instance.assignedAt.toIso8601String(),
      'isSticky': instance.isSticky,
    };

_ABTestEvent _$ABTestEventFromJson(Map<String, dynamic> json) => _ABTestEvent(
  userId: json['userId'] as String,
  testId: json['testId'] as String,
  variant: $enumDecode(_$TestVariantEnumMap, json['variant']),
  metric: $enumDecode(_$TestMetricEnumMap, json['metric']),
  value: (json['value'] as num).toInt(),
  eventTime: DateTime.parse(json['eventTime'] as String),
  customData: json['customData'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ABTestEventToJson(_ABTestEvent instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'testId': instance.testId,
      'variant': _$TestVariantEnumMap[instance.variant]!,
      'metric': _$TestMetricEnumMap[instance.metric]!,
      'value': instance.value,
      'eventTime': instance.eventTime.toIso8601String(),
      'customData': instance.customData,
    };

const _$TestMetricEnumMap = {
  TestMetric.impression: 'impression',
  TestMetric.click: 'click',
  TestMetric.conversion: 'conversion',
  TestMetric.revenue: 'revenue',
  TestMetric.churnRate: 'churnRate',
};

_ABTestResult _$ABTestResultFromJson(Map<String, dynamic> json) =>
    _ABTestResult(
      testId: json['testId'] as String,
      variant: $enumDecode(_$TestVariantEnumMap, json['variant']),
      impressions: (json['impressions'] as num).toInt(),
      conversions: (json['conversions'] as num).toInt(),
      conversionRate: (json['conversionRate'] as num).toDouble(),
      totalRevenue: (json['totalRevenue'] as num).toInt(),
      averageOrderValue: (json['averageOrderValue'] as num).toDouble(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ABTestResultToJson(_ABTestResult instance) =>
    <String, dynamic>{
      'testId': instance.testId,
      'variant': _$TestVariantEnumMap[instance.variant]!,
      'impressions': instance.impressions,
      'conversions': instance.conversions,
      'conversionRate': instance.conversionRate,
      'totalRevenue': instance.totalRevenue,
      'averageOrderValue': instance.averageOrderValue,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_PopulationStats _$PopulationStatsFromJson(Map<String, dynamic> json) =>
    _PopulationStats(
      totalUsers: (json['totalUsers'] as num).toInt(),
      activeUsers: (json['activeUsers'] as num).toInt(),
      churned: (json['churned'] as num).toInt(),
      churnRate: (json['churnRate'] as num).toDouble(),
      segmentDistribution: Map<String, int>.from(
        json['segmentDistribution'] as Map,
      ),
      sampledAt: DateTime.parse(json['sampledAt'] as String),
    );

Map<String, dynamic> _$PopulationStatsToJson(_PopulationStats instance) =>
    <String, dynamic>{
      'totalUsers': instance.totalUsers,
      'activeUsers': instance.activeUsers,
      'churned': instance.churned,
      'churnRate': instance.churnRate,
      'segmentDistribution': instance.segmentDistribution,
      'sampledAt': instance.sampledAt.toIso8601String(),
    };
