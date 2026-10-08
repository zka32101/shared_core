import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_core/models/character_data.dart';
import 'package:shared_core/providers/character_state_provider.dart';
import 'package:shared_core/widgets/coin_shop_page.dart';


const _chars = [
  BaseCharacter(
      id: 'a',
      name: 'ながいなまえのキャラクター',
      emoji: '🐱',
      tier: 1,
      unlockAt: 0,
      subject: 's',
      appSubject: Subject.kokugo,
      backstory: 'b',
      stampPhrases: []),
  BaseCharacter(
      id: 'b',
      name: 'ミケ',
      emoji: '🐶',
      tier: 1,
      unlockAt: 0,
      subject: 's',
      appSubject: Subject.kokugo,
      backstory: 'b',
      stampPhrases: []),
];

class _N extends BaseCharacterNotifier {
  @override
  List<BaseCharacter> get characterList => _chars;
  @override
  String get storageKey => 'test_chars';
  @override
  CharacterStateMap build() => {
        'a': const CharacterState(isUnlocked: true, level: 2),
        'b': const CharacterState(isUnlocked: true, level: 5, hasSparkle: true),
      };
}

void main() {
  for (final w in [320.0, 360.0, 411.0]) {
    for (final t in [1.0, 1.3]) {
      testWidgets('no overflow w=$w text=$t', (tester) async {
        tester.view.physicalSize = Size(w, 800);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.reset);
        await tester.pumpWidget(ProviderScope(
          overrides: [characterStateProvider.overrideWith(_N.new)],
          child: MaterialApp(
            builder: (c, child) => MediaQuery(
                data: MediaQuery.of(c).copyWith(textScaler: TextScaler.linear(t)),
                child: child!),
            home: const CoinShopPage(
                characters: _chars, exchangeItems: [], seasonalItems: {}),
          ),
        ));
        await tester.pump();
        expect(tester.takeException(), isNull);
      });
    }
  }
}
