// Phase 4.11: Paywall & Monetization 最適化
// Paywall 設定モデル・A/B テストバリアント・イベント追跡

import 'package:flutter/material.dart';

// ─── Paywall バリアント定義 ─────────────────────────────────────────────
class PaywallVariant {
  final String variantId;           // 'A', 'B', 'C'
  final String title;               // 例: 'シンプル', 'おすすめ', 'ローカルオファー'
  final List<String> features;      // 表示する機能リスト
  final bool showTrialOption;       // 無料トライアル表示
  final bool showYearlyDiscount;    // 年間割引表示
  final String primaryCTA;          // 主ボタンテキスト
  final Color accentColor;
  final String? description;        // オプション説明文

  PaywallVariant({
    required this.variantId,
    required this.title,
    required this.features,
    required this.showTrialOption,
    required this.showYearlyDiscount,
    required this.primaryCTA,
    required this.accentColor,
    this.description,
  });

  // Firebase RemoteConfig から JSON として取得したデータをパース
  factory PaywallVariant.fromJson(Map<String, dynamic> json) {
    return PaywallVariant(
      variantId: json['variantId'] as String? ?? 'A',
      title: json['title'] as String? ?? 'Default',
      features: (json['features'] as List?)?.cast<String>() ?? [],
      showTrialOption: json['showTrialOption'] as bool? ?? false,
      showYearlyDiscount: json['showYearlyDiscount'] as bool? ?? false,
      primaryCTA: json['primaryCTA'] as String? ?? 'Subscribe',
      accentColor: _parseColor(json['accentColor'] as String? ?? '0xFF2196F3'),
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'variantId': variantId,
    'title': title,
    'features': features,
    'showTrialOption': showTrialOption,
    'showYearlyDiscount': showYearlyDiscount,
    'primaryCTA': primaryCTA,
    'accentColor': '0x${accentColor.value.toRadixString(16)}',
    'description': description,
  };

  static Color _parseColor(String hexColor) {
    try {
      final buffer = StringBuffer();
      if (!hexColor.startsWith('0x')) {
        buffer.write('0x');
      }
      buffer.write(hexColor.replaceFirst('0x', '').toUpperCase());
      return Color(int.parse(buffer.toString()));
    } catch (_) {
      return Colors.blue;
    }
  }
}

// ─── ユーザーの Paywall A/B 割り当て設定 ────────────────────────────────
class PaywallABConfig {
  final String userId;
  final String assignedVariant;    // ユーザーに割り当てられた variant
  final DateTime createdAt;
  final bool hasInteracted;        // Paywall と interaction したか
  final bool hasConverted;         // 購買に至ったか

  PaywallABConfig({
    required this.userId,
    required this.assignedVariant,
    required this.createdAt,
    this.hasInteracted = false,
    this.hasConverted = false,
  });

  factory PaywallABConfig.fromJson(Map<String, dynamic> json) {
    return PaywallABConfig(
      userId: json['userId'] as String? ?? '',
      assignedVariant: json['assignedVariant'] as String? ?? 'A',
      createdAt: json['createdAt'] is DateTime
          ? json['createdAt'] as DateTime
          : DateTime.tryParse(json['createdAt'] as String? ?? '') ?? DateTime.now(),
      hasInteracted: json['hasInteracted'] as bool? ?? false,
      hasConverted: json['hasConverted'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'assignedVariant': assignedVariant,
    'createdAt': createdAt.toIso8601String(),
    'hasInteracted': hasInteracted,
    'hasConverted': hasConverted,
  };

  PaywallABConfig copyWith({
    String? userId,
    String? assignedVariant,
    DateTime? createdAt,
    bool? hasInteracted,
    bool? hasConverted,
  }) {
    return PaywallABConfig(
      userId: userId ?? this.userId,
      assignedVariant: assignedVariant ?? this.assignedVariant,
      createdAt: createdAt ?? this.createdAt,
      hasInteracted: hasInteracted ?? this.hasInteracted,
      hasConverted: hasConverted ?? this.hasConverted,
    );
  }
}

// ─── Paywall トラッキングイベント ─────────────────────────────────────
class PaywallEvent {
  final String userId;
  final String eventType;  // 'impression', 'interaction', 'conversion'
  final String variantId;
  final DateTime timestamp;
  final Map<String, dynamic> metadata;

  PaywallEvent({
    required this.userId,
    required this.eventType,
    required this.variantId,
    required this.timestamp,
    this.metadata = const {},
  });

  factory PaywallEvent.fromJson(Map<String, dynamic> json) {
    return PaywallEvent(
      userId: json['userId'] as String? ?? '',
      eventType: json['eventType'] as String? ?? 'impression',
      variantId: json['variantId'] as String? ?? 'A',
      timestamp: json['timestamp'] is DateTime
          ? json['timestamp'] as DateTime
          : DateTime.tryParse(json['timestamp'] as String? ?? '') ?? DateTime.now(),
      metadata: json['metadata'] as Map<String, dynamic>? ?? {},
    );
  }

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'eventType': eventType,
    'variantId': variantId,
    'timestamp': timestamp.toIso8601String(),
    'metadata': metadata,
  };
}

// ─── Paywall Analytics サマリー ─────────────────────────────────────────
class PaywallAnalyticsSummary {
  final String variantId;
  final int totalImpressions;
  final int totalInteractions;
  final int totalConversions;
  final double conversionRate;
  final double interactionRate;

  PaywallAnalyticsSummary({
    required this.variantId,
    required this.totalImpressions,
    required this.totalInteractions,
    required this.totalConversions,
  })  : conversionRate = totalImpressions > 0
            ? (totalConversions / totalImpressions) * 100
            : 0,
        interactionRate = totalImpressions > 0
            ? (totalInteractions / totalImpressions) * 100
            : 0;

  factory PaywallAnalyticsSummary.fromJson(Map<String, dynamic> json) {
    return PaywallAnalyticsSummary(
      variantId: json['variantId'] as String? ?? 'A',
      totalImpressions: json['totalImpressions'] as int? ?? 0,
      totalInteractions: json['totalInteractions'] as int? ?? 0,
      totalConversions: json['totalConversions'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
    'variantId': variantId,
    'totalImpressions': totalImpressions,
    'totalInteractions': totalInteractions,
    'totalConversions': totalConversions,
    'conversionRate': conversionRate,
    'interactionRate': interactionRate,
  };
}
