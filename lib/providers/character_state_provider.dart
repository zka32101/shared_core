import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/character_data.dart';
import 'coin_provider.dart';

typedef CharacterStateMap = Map<String, CharacterState>;
typedef CharacterProfileMap = Map<String, CharacterProfile>;

/// Abstract base for all subject character notifiers.
/// Each app subclasses this and overrides [characterList] + [storageKey].
///
/// Usage in each app:
/// ```dart
/// class CharacterNotifier extends BaseCharacterNotifier {
///   @override List<BaseCharacter> get characterList => kMyCharacters;
///   @override String get storageKey => 'myapp_char_states';
/// }
///
/// final characterProvider = NotifierProvider<CharacterNotifier, CharacterStateMap>(
///   CharacterNotifier.new,
/// );
/// ```
/// Then override [characterStateProvider] in each app's ProviderScope.
abstract class BaseCharacterNotifier extends Notifier<CharacterStateMap> {
  List<BaseCharacter> get characterList;
  String get storageKey;

  bool _loaded = false;

  @override
  CharacterStateMap build() {
    Future.microtask(_load);
    return {};
  }

  Future<void> _load() async {
    if (_loaded) return;
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(storageKey);
    if (raw != null) {
      final map = jsonDecode(raw) as Map<String, dynamic>;
      state = map.map(
        (k, v) => MapEntry(k, CharacterState.fromJson(v as Map<String, dynamic>)),
      );
    } else {
      state = {
        for (final c in characterList)
          c.id: CharacterState(isUnlocked: c.unlockAt == 0),
      };
      await _persist();
    }
    _loaded = true;
  }

  Future<void> _persist() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(storageKey, jsonEncode(
      state.map((k, v) => MapEntry(k, v.toJson())),
    ));
  }

  /// Call after stage completion to unlock eligible characters.
  Future<void> checkUnlocks(int totalStagesCleared) async {
    if (!_loaded) await _load();
    var updated = Map<String, CharacterState>.from(state);
    bool changed = false;
    for (final char in characterList) {
      final s = updated[char.id] ?? const CharacterState();
      if (!s.isUnlocked && totalStagesCleared >= char.unlockAt) {
        updated[char.id] = s.copyWith(isUnlocked: true);
        changed = true;
      }
    }
    if (changed) {
      state = updated;
      await _persist();
    }
  }

  /// Level up a character. Returns error message, or null on success.
  Future<String?> levelUp(String characterId) async {
    if (!_loaded) await _load();
    final cs = state[characterId];
    if (cs == null || !cs.isUnlocked) return 'キャラが解放されていません';
    if (cs.isMaxLevel) return 'すでにMAXレベルです';

    final nextLevel = cs.level + 1;
    final cost = kLevelUpCost[nextLevel]!;
    final ok = await ref.read(coinProvider.notifier).spendCoins(cost);
    if (!ok) return 'コインが足りません（必要: ${cost}コイン）';

    CharacterState updated = cs.copyWith(level: nextLevel);
    if (nextLevel == 2) updated = updated.copyWith(hasExpressions: true);
    if (nextLevel == 3) updated = updated.copyWith(hasPoses: true);
    if (nextLevel == 4) updated = updated.copyWith(hasBackstory: true);
    if (nextLevel == 5) {
      updated = updated.copyWith(hasSparkle: true, hasStampCoupon: true);
    }

    state = {...state, characterId: updated};
    await _persist();
    return null;
  }
}

// ─── Phase 4.1: CharacterProfile対応 ──────────────────────────────────────

/// 新しい CharacterProfile ベースのノティファイア (Phase 4.1)
/// Firestore 永続化対応・統一キャラクターシステム用
abstract class BaseCharacterProfileNotifier extends Notifier<CharacterProfileMap> {
  List<BaseCharacter> get characterList;
  String get storageKey;
  Subject get appSubject; // 各アプリの教科タグ

  bool _loaded = false;

  @override
  CharacterProfileMap build() {
    Future.microtask(_load);
    return {};
  }

  Future<void> _load() async {
    if (_loaded) return;
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(storageKey);
    if (raw != null) {
      final map = jsonDecode(raw) as Map<String, dynamic>;
      state = map.map(
        (k, v) => MapEntry(k, CharacterProfile.fromJson(v as Map<String, dynamic>)),
      );
    } else {
      state = {
        for (final c in characterList)
          c.id: CharacterProfile(
            id: c.id,
            name: c.name,
            emoji: c.emoji,
            appSubject: c.appSubject,
            tier: c.tier,
            unlockedAt: DateTime.now(),
          ),
      };
      await _persist();
    }
    _loaded = true;
  }

  Future<void> _persist() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(storageKey, jsonEncode(
      state.map((k, v) => MapEntry(k, v.toJson())),
    ));
  }

  /// ステージクリア後、解放対象キャラをアンロック
  Future<void> checkUnlocks(int totalStagesCleared) async {
    if (!_loaded) await _load();
    var updated = Map<String, CharacterProfile>.from(state);
    bool changed = false;
    for (final char in characterList) {
      final profile = updated[char.id];
      if (profile != null && totalStagesCleared >= char.unlockAt && !_isUnlocked(profile)) {
        updated[char.id] = profile.copyWith(unlockedAt: DateTime.now());
        changed = true;
      }
    }
    if (changed) {
      state = updated;
      await _persist();
    }
  }

  /// キャラクターがアンロック済みかどうか
  bool _isUnlocked(CharacterProfile profile) {
    return profile.unlockedAt.isBefore(DateTime.now());
  }

  /// キャラクターをレベルアップ
  Future<String?> levelUpCharacter(String characterId) async {
    if (!_loaded) await _load();
    final profile = state[characterId];
    if (profile == null) return 'キャラが見つかりません';
    if (profile.isMaxLevel) return 'すでにMAXレベルです';

    final nextLevel = profile.level + 1;
    final cost = kLevelUpCost[nextLevel] ?? 999;
    final ok = await ref.read(coinProvider.notifier).spendCoins(cost);
    if (!ok) return 'コインが足りません（必要: ${cost}コイン）';

    final updated = profile.copyWith(level: nextLevel);
    state = {...state, characterId: updated};
    await _persist();
    return null;
  }

  /// キャラクターを装備
  Future<void> equipCharacter(String characterId) async {
    if (!_loaded) await _load();

    // 前のキャラを外す
    final updated = <String, CharacterProfile>{};
    for (final entry in state.entries) {
      updated[entry.key] = entry.value.copyWith(
        isEquipped: entry.key == characterId,
      );
    }
    state = updated;
    await _persist();
  }
}

/// Shared placeholder provider — override in each app's ProviderScope.
///
/// ```dart
/// ProviderScope(
///   overrides: [
///     characterStateProvider.overrideWith(CharacterNotifier.new),
///   ],
///   child: MyApp(),
/// )
/// ```
final characterStateProvider =
    NotifierProvider<BaseCharacterNotifier, CharacterStateMap>(
  () => throw UnimplementedError(
    'characterStateProvider must be overridden in each app\'s ProviderScope',
  ),
);
