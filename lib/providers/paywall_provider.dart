// Phase 4.11: Paywall プロバイダー
// Firebase RemoteConfig から Paywall バリアントを取得・A/B割り当て・イベント追跡

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/paywall_config.dart';

// ─── Firebase RemoteConfig から Paywall バリアントを取得 ────────────────
final paywallConfigProvider = FutureProvider.autoDispose
    .family<List<PaywallVariant>, void>((ref, _) async {
  try {
    final remoteConfig = FirebaseRemoteConfig.instance;

    // RemoteConfig を fetch (最小インターバル 12時間、デバッグ時は即座)
    try {
      await remoteConfig.fetchAndActivate();
    } catch (_) {
      // ネットワークエラーでもローカルキャッシュを使用
    }

    // デフォルト値を設定（フォールバック）
    await remoteConfig.setDefaults({
      'paywall_variants': jsonEncode(_getDefaultPaywallVariants()),
    });

    final configJson = remoteConfig.getString('paywall_variants');

    if (configJson.isEmpty) {
      return _getDefaultPaywallVariants();
    }

    final json = jsonDecode(configJson) as List;
    return json
        .map((item) => PaywallVariant.fromJson(item as Map<String, dynamic>))
        .toList();
  } catch (e) {
    // エラーログ出力（各アプリで実装）
    return _getDefaultPaywallVariants();
  }
});

// ─── ユーザーに割り当てられた Paywall バリアント ──────────────────────
final userPaywallVariantProvider = FutureProvider.autoDispose
    .family<PaywallVariant, String>((ref, userId) async {
  try {
    final db = FirebaseFirestore.instance;
    final configRef = db.collection('users').doc(userId).collection('config').doc('paywall');

    final doc = await configRef.get();

    if (doc.exists) {
      final config = PaywallABConfig.fromJson(doc.data() ?? {});
      final variants = await ref.watch(paywallConfigProvider.future);

      final assigned = variants.firstWhere(
        (v) => v.variantId == config.assignedVariant,
        orElse: () => variants.first,
      );

      return assigned;
    } else {
      // 新規ユーザー: ランダムに A, B, C を割り当て
      final variants = await ref.watch(paywallConfigProvider.future);
      final assigned = variants[Random().nextInt(variants.length)];

      // Firestore に保存
      await configRef.set(PaywallABConfig(
        userId: userId,
        assignedVariant: assigned.variantId,
        createdAt: DateTime.now(),
      ).toJson());

      return assigned;
    }
  } catch (e) {
    // エラー時はデフォルト(A)を返す
    return PaywallVariant(
      variantId: 'A',
      title: 'シンプル',
      features: ['無制限クイズ', 'AIサポート', '広告なし'],
      showTrialOption: false,
      showYearlyDiscount: false,
      primaryCTA: '今すぐ購読',
      accentColor: const Color(0xFF2196F3),
    );
  }
});

// ─── Paywall イベント追跡 Provider ──────────────────────────────────────
final paywallEventsProvider = StateNotifierProvider<PaywallEventNotifier, List<PaywallEvent>>(
  (ref) => PaywallEventNotifier(),
);

class PaywallEventNotifier extends StateNotifier<List<PaywallEvent>> {
  PaywallEventNotifier() : super([]);

  // Paywall impression を記録（表示された）
  Future<void> trackImpression(String userId, String variantId) async {
    final event = PaywallEvent(
      userId: userId,
      eventType: 'impression',
      variantId: variantId,
      timestamp: DateTime.now(),
    );

    try {
      await FirebaseFirestore.instance
          .collection('analytics')
          .doc('paywall')
          .collection('events')
          .add(event.toJson());
    } catch (_) {
      // Firestore 接続失敗時もローカルに記録
    }

    state = [...state, event];
  }

  // Paywall interaction を記録（ユーザーが何かしら反応）
  Future<void> trackInteraction(
    String userId,
    String variantId,
    String action,
  ) async {
    final event = PaywallEvent(
      userId: userId,
      eventType: 'interaction',
      variantId: variantId,
      timestamp: DateTime.now(),
      metadata: {'action': action},
    );

    try {
      await FirebaseFirestore.instance
          .collection('analytics')
          .doc('paywall')
          .collection('events')
          .add(event.toJson());

      // ユーザー config を更新（hasInteracted = true）
      final db = FirebaseFirestore.instance;
      final configRef = db
          .collection('users')
          .doc(userId)
          .collection('config')
          .doc('paywall');

      await configRef.update({'hasInteracted': true});
    } catch (_) {
      // Firestore 接続失敗時もローカルに記録
    }

    state = [...state, event];
  }

  // Paywall conversion を記録（購買に至った）
  Future<void> trackConversion(String userId, String variantId) async {
    final event = PaywallEvent(
      userId: userId,
      eventType: 'conversion',
      variantId: variantId,
      timestamp: DateTime.now(),
    );

    try {
      await FirebaseFirestore.instance
          .collection('analytics')
          .doc('paywall')
          .collection('events')
          .add(event.toJson());

      // ユーザー config を更新（hasConverted = true）
      final db = FirebaseFirestore.instance;
      final configRef = db
          .collection('users')
          .doc(userId)
          .collection('config')
          .doc('paywall');

      await configRef.update({'hasConverted': true});
    } catch (_) {
      // Firestore 接続失敗時もローカルに記録
    }

    state = [...state, event];
  }

  // ローカルイベントをクリア
  void clearLocalEvents() {
    state = [];
  }
}

// ─── Paywall Analytics 取得 ────────────────────────────────────────────
final paywallAnalyticsProvider = FutureProvider.autoDispose
    .family<PaywallAnalyticsSummary, String>((ref, variantId) async {
  try {
    final db = FirebaseFirestore.instance;

    // イベント集計クエリ
    final impressions = await db
        .collection('analytics')
        .doc('paywall')
        .collection('events')
        .where('variantId', isEqualTo: variantId)
        .where('eventType', isEqualTo: 'impression')
        .count()
        .get();

    final interactions = await db
        .collection('analytics')
        .doc('paywall')
        .collection('events')
        .where('variantId', isEqualTo: variantId)
        .where('eventType', isEqualTo: 'interaction')
        .count()
        .get();

    final conversions = await db
        .collection('analytics')
        .doc('paywall')
        .collection('events')
        .where('variantId', isEqualTo: variantId)
        .where('eventType', isEqualTo: 'conversion')
        .count()
        .get();

    return PaywallAnalyticsSummary(
      variantId: variantId,
      totalImpressions: impressions.count,
      totalInteractions: interactions.count,
      totalConversions: conversions.count,
    );
  } catch (e) {
    return PaywallAnalyticsSummary(
      variantId: variantId,
      totalImpressions: 0,
      totalInteractions: 0,
      totalConversions: 0,
    );
  }
});

// ─── デフォルト Paywall バリアント定義 ────────────────────────────────
List<PaywallVariant> _getDefaultPaywallVariants() {
  return [
    PaywallVariant(
      variantId: 'A',
      title: 'シンプル',
      features: ['無制限クイズ', 'AIサポート', '広告なし'],
      showTrialOption: false,
      showYearlyDiscount: false,
      primaryCTA: '今すぐ購読',
      accentColor: const Color(0xFF2196F3),
      description: 'シンプルなデザインで、必要な機能をそろえたプラン',
    ),
    PaywallVariant(
      variantId: 'B',
      title: 'おすすめ',
      features: [
        '無制限クイズ',
        'AIサポート',
        '広告なし',
        '親向けレポート',
        'オンライン対戦',
      ],
      showTrialOption: true,
      showYearlyDiscount: true,
      primaryCTA: '3日間無料で試す',
      accentColor: const Color(0xFF4CAF50),
      description: '最も人気のあるプラン。3日無料トライアル付き',
    ),
    PaywallVariant(
      variantId: 'C',
      title: 'ローカルオファー',
      features: ['無制限クイズ', 'AIサポート', '広告なし'],
      showTrialOption: false,
      showYearlyDiscount: false,
      primaryCTA: '今月は¥50でお試し',
      accentColor: const Color(0xFFFF9800),
      description: '期間限定の特別オファー。今月は90%OFFでお試し',
    ),
  ];
}
