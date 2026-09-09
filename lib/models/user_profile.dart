class UserProfile {
  final String id;
  final String name;
  final int grade;
  final DateTime createdAt;
  final bool isNamePublic; // ランキング等で実名を公開するか（デフォルト false = 匿名表示）

  const UserProfile({
    required this.id,
    required this.name,
    required this.grade,
    required this.createdAt,
    this.isNamePublic = false,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as String,
      name: json['name'] as String,
      grade: json['grade'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isNamePublic: json['isNamePublic'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'grade': grade,
      'createdAt': createdAt.toIso8601String(),
      'isNamePublic': isNamePublic,
    };
  }

  UserProfile copyWith({
    String? id,
    String? name,
    int? grade,
    DateTime? createdAt,
    bool? isNamePublic,
  }) {
    return UserProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      grade: grade ?? this.grade,
      createdAt: createdAt ?? this.createdAt,
      isNamePublic: isNamePublic ?? this.isNamePublic,
    );
  }
}
