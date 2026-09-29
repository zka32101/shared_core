// ship-cycle の 10観点テスト（端末上パート）。device-10check.sh が実行時に差し込む。アプリにはコミットしない。
// 方針: shared_core docs/DEV_PLAYBOOK.md §3
import 'dart:io' show Platform;
import 'dart:ui' show Brightness, Size;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:__PKG__/main.dart' as app;

import 'screen_catalog.dart';

/// 表示条件のバリエーション。normal で出た表示崩れは失敗、それ以外は警告（初回は既存の崩れが多いため）。
class _Variant {
  const _Variant(this.suffix, {this.textScale = 1.0, this.size, this.dark = false});
  final String suffix; // スクリーンショット名の末尾
  final double textScale;
  final Size? size; // 物理ピクセル
  final bool dark;
}

const _variants = <_Variant>[
  _Variant(''),
  // 小型スマホ（360x640dp）+ 文字を最大級（2.0 倍）: 子ども向けで最も崩れやすい条件
  _Variant('_stress', textScale: 2.0, size: Size(720, 1280)),
  _Variant('_dark', dark: true),
];

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('10観点: 起動・全画面ツアー', (tester) async {
    final fatal = <String>[]; // 観点3 を失敗にするもの（normal の表示崩れ・起動時例外）
    final warnings = <String>[]; // 警告（引数が必要な画面、variant での崩れなど）
    var current = 'launch';
    var variant = _variants.first;
    final original = FlutterError.onError;
    FlutterError.onError = (details) {
      final msg = '${details.exceptionAsString().split('\n').first} @ $current${variant.suffix}';
      final isLayout = msg.contains('overflowed') || msg.contains('RenderBox was not laid out');
      final isFatal = (isLayout || current == 'launch') && variant.suffix.isEmpty;
      (isFatal ? fatal : warnings).add(msg);
    };

    void applyVariant(_Variant v) {
      variant = v;
      tester.platformDispatcher.textScaleFactorTestValue = v.textScale;
      tester.platformDispatcher.platformBrightnessTestValue = v.dark ? Brightness.dark : Brightness.light;
      if (v.size != null) {
        tester.view.physicalSize = v.size!;
        tester.view.devicePixelRatio = 2.0;
      } else {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      }
    }

    void resetVariant() {
      tester.platformDispatcher.clearTextScaleFactorTestValue();
      tester.platformDispatcher.clearPlatformBrightnessTestValue();
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
      variant = _variants.first;
    }

    // 観点1: 起動
    app.main();
    await _settle(tester, const Duration(seconds: 15));
    expect(find.byType(WidgetsApp), findsWidgets, reason: '観点1: アプリが起動しない');
    if (Platform.isAndroid) await binding.convertFlutterSurfaceToImage();
    await _shot(binding, tester, '00_launch');

    // 観点3: 全画面ツアー（MaterialApp.routes を自動検出 + screen_catalog.dart の追加分）
    final navFinder = find.byType(Navigator);
    final routes = <String>{};
    final materialApps = find.byType(MaterialApp);
    if (materialApps.evaluate().isNotEmpty) {
      routes.addAll(tester.widget<MaterialApp>(materialApps.first).routes?.keys ?? const []);
    }
    routes
      ..addAll(extraRoutes)
      ..removeAll({'/', ...skipRoutes});

    var i = 1;
    for (final route in routes) {
      if (navFinder.evaluate().isEmpty) break;
      current = route;
      final tag = '${(i++).toString().padLeft(2, '0')}_${route.replaceAll(RegExp(r'[^\w]'), '_')}';
      for (final v in _variants) {
        applyVariant(v);
        try {
          final nav = tester.state<NavigatorState>(navFinder.first);
          nav.pushNamed(route);
          await _settle(tester, const Duration(seconds: 8));
          await _shot(binding, tester, '$tag${v.suffix}');
          if (nav.canPop()) nav.pop();
        } catch (e) {
          warnings.add('$e @ $route${v.suffix}');
        }
        await _settle(tester, const Duration(seconds: 4));
      }
      resetVariant();
    }
    current = 'done';
    FlutterError.onError = original;

    // ignore: avoid_print
    for (final w in warnings) print('SHIP_CYCLE_WARN $w');
    // ignore: avoid_print
    print('SHIP_CYCLE_ROUTES ${routes.length}');
    expect(fatal, isEmpty, reason: '観点3: 表示崩れ・起動時例外 ${fatal.take(5).join(' | ')}');
  });
}

/// 無限アニメーションがあっても止まらないよう上限付きで待つ
Future<void> _settle(WidgetTester tester, Duration timeout) async {
  try {
    await tester.pumpAndSettle(const Duration(milliseconds: 100), EnginePhase.sendSemanticsUpdate, timeout);
  } catch (_) {
    await tester.pump(const Duration(seconds: 1));
  }
}

Future<void> _shot(IntegrationTestWidgetsFlutterBinding binding, WidgetTester tester, String name) async {
  try {
    await tester.pump();
    await binding.takeScreenshot(name);
  } catch (_) {
    // スクリーンショット非対応の実行方法（flutter test）でもテスト自体は続ける
  }
}
