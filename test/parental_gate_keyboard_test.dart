import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_core/widgets/parental_gate.dart';

/// 小さい画面でキーボードが出ても、「つぎへ」を押せることを確認する。
Future<void> _openGate(WidgetTester tester, void Function(bool?) onResult) async {
  await tester.pumpWidget(MaterialApp(
    home: Builder(
      builder: (context) => Scaffold(
        body: TextButton(
          onPressed: () async => onResult(await showDialog<bool>(
            context: context,
            barrierDismissible: false,
            builder: (_) => const ParentalGateDialog(),
          )),
          child: const Text('open'),
        ),
      ),
    ),
  ));
  await tester.tap(find.text('open'));
  await tester.pumpAndSettle();
}

int _answer(WidgetTester tester) {
  final q = tester
      .widgetList<Text>(find.byType(Text))
      .map((t) => t.data ?? '')
      .firstWhere((d) => RegExp(r'^\d+ [+-] \d+ = \?$').hasMatch(d));
  final m = RegExp(r'(\d+) ([+-]) (\d+)').firstMatch(q)!;
  final a = int.parse(m.group(1)!);
  final b = int.parse(m.group(3)!);
  return m.group(2) == '+' ? a + b : a - b;
}

void main() {
  testWidgets('小さい画面+キーボード表示中でも「つぎへ」が画面内にあり、押せば進める', (tester) async {
    // 360x640dp の端末、キーボード高さ 300dp。
    tester.view.devicePixelRatio = 1.0;
    tester.view.physicalSize = const Size(360, 640);
    tester.view.viewInsets = const FakeViewPadding(bottom: 300);
    addTearDown(tester.view.reset);

    bool? result;
    await _openGate(tester, (r) => result = r);

    await tester.enterText(find.byType(TextField), '${_answer(tester)}');
    await tester.pumpAndSettle();

    // ボタンが、キーボードの上(= 画面の 340dp より上)に見えていること。
    final bottom = tester.getBottomLeft(find.text('つぎへ')).dy;
    expect(bottom, lessThanOrEqualTo(340), reason: 'ボタンがキーボードの裏に隠れている');

    await tester.tap(find.text('つぎへ'));
    await tester.pumpAndSettle();
    expect(result, true);
  });

  testWidgets('通常の画面では、これまでどおり正解で進み、不正解でエラー表示', (tester) async {
    bool? result;
    await _openGate(tester, (r) => result = r);

    await tester.enterText(find.byType(TextField), '${_answer(tester) + 1}');
    await tester.tap(find.text('つぎへ'));
    await tester.pumpAndSettle();
    expect(find.text('答えが違います'), findsOneWidget);
    expect(result, isNull);

    await tester.enterText(find.byType(TextField), '${_answer(tester)}');
    await tester.tap(find.text('つぎへ'));
    await tester.pumpAndSettle();
    expect(result, true);
  });
}
