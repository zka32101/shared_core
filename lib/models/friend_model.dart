// 小学コレシリーズ共通「友達（フレンド）」機能の型。
//
// kokugo-kore / sansu-kore / eigo 等では既に各アプリ独自の友達機能が実装済みのため、
// 今回 shared_core 側でそれらを置き換えることはしない。ここではこれから友達機能を
// 実装する、または将来的に共通実装へ移行するアプリ向けの共通基盤として、最小限の
// モデル・Notifierのみを用意する（データ取得・追加処理はコールバック注入方式で
// アプリ側に委ねる。feedback/ranking と同じ設計思想）。

/// 1人の友達情報（シンプルな構造）。
class Friend {
  final String friendUserId;
  final String displayName;
  final int? grade;
  final DateTime addedAt;

  const Friend({
    required this.friendUserId,
    required this.displayName,
    this.grade,
    required this.addedAt,
  });

  factory Friend.fromJson(Map<String, dynamic> json) => Friend(
        friendUserId: json['friendUserId'] as String,
        displayName: json['displayName'] as String,
        grade: json['grade'] as int?,
        addedAt: DateTime.tryParse(json['addedAt'] as String? ?? '') ?? DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        'friendUserId': friendUserId,
        'displayName': displayName,
        'grade': grade,
        'addedAt': addedAt.toIso8601String(),
      };

  Friend copyWith({
    String? friendUserId,
    String? displayName,
    int? grade,
    DateTime? addedAt,
  }) =>
      Friend(
        friendUserId: friendUserId ?? this.friendUserId,
        displayName: displayName ?? this.displayName,
        grade: grade ?? this.grade,
        addedAt: addedAt ?? this.addedAt,
      );

  @override
  String toString() =>
      'Friend(friendUserId: $friendUserId, displayName: $displayName, grade: $grade)';
}
