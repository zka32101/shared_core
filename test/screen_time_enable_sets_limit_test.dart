import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_core/shared_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _TestNotifier extends BaseScreenTimeNotifier {
  @override
  String get storageKey => 'screen_time_test';
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('スイッチを ON にすると、表示中の最小値が上限として保存される',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [screenTimeProvider.overrideWith(_TestNotifier.new)],
      child: const MaterialApp(
        home: Scaffold(
          body: ScreenTimeSettingsWidget(primaryColor: Colors.orange),
        ),
      ),
    ));
    await tester.pumpAndSettle();
    final container =
        ProviderScope.containerOf(tester.element(find.byType(Scaffold)));
    expect(container.read(screenTimeProvider).settings.dailyLimitMinutes, isNull);

    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();

    final settings = container.read(screenTimeProvider).settings;
    expect(settings.enabled, isTrue);
    expect(settings.dailyLimitMinutes, 15);
  });

  testWidgets('すでに上限があるときは、ON にしても上書きしない', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [screenTimeProvider.overrideWith(_TestNotifier.new)],
      child: const MaterialApp(
        home: Scaffold(
          body: ScreenTimeSettingsWidget(primaryColor: Colors.orange),
        ),
      ),
    ));
    await tester.pumpAndSettle();
    final container =
        ProviderScope.containerOf(tester.element(find.byType(Scaffold)));
    await container.read(screenTimeProvider.notifier).setDailyLimit(60);

    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();

    expect(container.read(screenTimeProvider).settings.dailyLimitMinutes, 60);
  });
}
