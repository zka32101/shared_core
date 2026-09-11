// 小学コレシリーズ共通「学習指標・分析」機能の型定義
//
// Phase 4.10: Analytics & Reporting 統一システム
// 7つの小学コレアプリ全体で学習指標の計測・分析・レポート生成を統一化
//
// - LearningMetrics: 1日の学習記録（正答率・学習時間など）
// - WeeklyMetrics: 週間統計（日次データの集約）
// - MonthlyMetrics: 月間統計（週間データの集約＋AI分析）

/// 1日の学習指標を記録するモデル
class LearningMetrics {
  final String userId;
  final DateTime date;
  final int studyTimeMinutes;      // 学習時間（分）
  final int questionsAnswered;     // 回答問題数
  final int correctAnswers;        // 正解数
  final double correctRate;        // 正答率（0.0～1.0）
  final double averageSpeed;       // 平均回答速度（秒）
  final int streakDays;            // 連続学習日数
  final String subject;            // 教科（math, japanese など）
  final DateTime createdAt;        // 記録作成日時
  final DateTime? updatedAt;       // 最終更新日時

  const LearningMetrics({
    required this.userId,
    required this.date,
    required this.studyTimeMinutes,
    required this.questionsAnswered,
    required this.correctAnswers,
    required this.correctRate,
    required this.averageSpeed,
    required this.streakDays,
    required this.subject,
    required this.createdAt,
    this.updatedAt,
  });

  /// Firestore から取得したドキュメントを LearningMetrics に変換
  factory LearningMetrics.fromJson(Map<String, dynamic> json) {
    return LearningMetrics(
      userId: json['userId'] as String? ?? '',
      date: json['date'] is DateTime
          ? json['date'] as DateTime
          : DateTime.parse(json['date'] as String? ?? DateTime.now().toIso8601String()),
      studyTimeMinutes: json['studyTimeMinutes'] as int? ?? 0,
      questionsAnswered: json['questionsAnswered'] as int? ?? 0,
      correctAnswers: json['correctAnswers'] as int? ?? 0,
      correctRate: (json['correctRate'] as num?)?.toDouble() ?? 0.0,
      averageSpeed: (json['averageSpeed'] as num?)?.toDouble() ?? 0.0,
      streakDays: json['streakDays'] as int? ?? 0,
      subject: json['subject'] as String? ?? '',
      createdAt: json['createdAt'] is DateTime
          ? json['createdAt'] as DateTime
          : DateTime.parse(json['createdAt'] as String? ?? DateTime.now().toIso8601String()),
      updatedAt: json['updatedAt'] != null
          ? json['updatedAt'] is DateTime
              ? json['updatedAt'] as DateTime
              : DateTime.parse(json['updatedAt'] as String)
          : null,
    );
  }

  /// LearningMetrics を Firestore に保存する形式に変換
  Map<String, dynamic> toJson() => {
    'userId': userId,
    'date': date,
    'studyTimeMinutes': studyTimeMinutes,
    'questionsAnswered': questionsAnswered,
    'correctAnswers': correctAnswers,
    'correctRate': correctRate,
    'averageSpeed': averageSpeed,
    'streakDays': streakDays,
    'subject': subject,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

  /// フィールド更新用の copyWith メソッド
  LearningMetrics copyWith({
    String? userId,
    DateTime? date,
    int? studyTimeMinutes,
    int? questionsAnswered,
    int? correctAnswers,
    double? correctRate,
    double? averageSpeed,
    int? streakDays,
    String? subject,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LearningMetrics(
      userId: userId ?? this.userId,
      date: date ?? this.date,
      studyTimeMinutes: studyTimeMinutes ?? this.studyTimeMinutes,
      questionsAnswered: questionsAnswered ?? this.questionsAnswered,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      correctRate: correctRate ?? this.correctRate,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      streakDays: streakDays ?? this.streakDays,
      subject: subject ?? this.subject,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() => 'LearningMetrics('
      'userId: $userId, '
      'date: $date, '
      'studyTimeMinutes: $studyTimeMinutes, '
      'correctRate: ${(correctRate * 100).toStringAsFixed(1)}%, '
      'streakDays: $streakDays)';
}

/// 週間統計を集約するモデル
class WeeklyMetrics {
  final DateTime weekStart;
  final DateTime weekEnd;
  final List<LearningMetrics> dailyData;    // 7日間の日次データ
  final double averageCorrectRate;          // 週間正答率（平均）
  final int totalStudyTimeMinutes;          // 週間学習時間（合計）
  final int growthScore;                    // 成長スコア（0-100）
  final String? aiInsight;                  // AI 分析テキスト（オプション）

  const WeeklyMetrics({
    required this.weekStart,
    required this.weekEnd,
    required this.dailyData,
    required this.averageCorrectRate,
    required this.totalStudyTimeMinutes,
    required this.growthScore,
    this.aiInsight,
  });

  /// Firestore から取得したドキュメントを WeeklyMetrics に変換
  factory WeeklyMetrics.fromJson(Map<String, dynamic> json) {
    final dailyList = (json['dailyData'] as List?)
            ?.map((e) => LearningMetrics.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    return WeeklyMetrics(
      weekStart: json['weekStart'] is DateTime
          ? json['weekStart'] as DateTime
          : DateTime.parse(json['weekStart'] as String? ?? DateTime.now().toIso8601String()),
      weekEnd: json['weekEnd'] is DateTime
          ? json['weekEnd'] as DateTime
          : DateTime.parse(json['weekEnd'] as String? ?? DateTime.now().toIso8601String()),
      dailyData: dailyList,
      averageCorrectRate: (json['averageCorrectRate'] as num?)?.toDouble() ?? 0.0,
      totalStudyTimeMinutes: json['totalStudyTimeMinutes'] as int? ?? 0,
      growthScore: json['growthScore'] as int? ?? 0,
      aiInsight: json['aiInsight'] as String?,
    );
  }

  /// WeeklyMetrics を JSON に変換
  Map<String, dynamic> toJson() => {
    'weekStart': weekStart,
    'weekEnd': weekEnd,
    'dailyData': dailyData.map((e) => e.toJson()).toList(),
    'averageCorrectRate': averageCorrectRate,
    'totalStudyTimeMinutes': totalStudyTimeMinutes,
    'growthScore': growthScore,
    'aiInsight': aiInsight,
  };

  /// フィールド更新用の copyWith メソッド
  WeeklyMetrics copyWith({
    DateTime? weekStart,
    DateTime? weekEnd,
    List<LearningMetrics>? dailyData,
    double? averageCorrectRate,
    int? totalStudyTimeMinutes,
    int? growthScore,
    String? aiInsight,
  }) {
    return WeeklyMetrics(
      weekStart: weekStart ?? this.weekStart,
      weekEnd: weekEnd ?? this.weekEnd,
      dailyData: dailyData ?? this.dailyData,
      averageCorrectRate: averageCorrectRate ?? this.averageCorrectRate,
      totalStudyTimeMinutes: totalStudyTimeMinutes ?? this.totalStudyTimeMinutes,
      growthScore: growthScore ?? this.growthScore,
      aiInsight: aiInsight ?? this.aiInsight,
    );
  }

  @override
  String toString() => 'WeeklyMetrics('
      'weekStart: $weekStart, '
      'averageCorrectRate: ${(averageCorrectRate * 100).toStringAsFixed(1)}%, '
      'totalStudyTime: ${totalStudyTimeMinutes}分, '
      'growthScore: $growthScore)';
}

/// 月間統計を集約するモデル
class MonthlyMetrics {
  final DateTime monthStart;
  final DateTime monthEnd;
  final List<WeeklyMetrics> weeklyData;     // 4-5週間のデータ
  final double averageCorrectRate;          // 月間正答率（平均）
  final int totalStudyTimeMinutes;          // 月間学習時間（合計）
  final int growthScore;                    // 成長スコア（0-100）
  final String? aiInsight;                  // AI 分析テキスト（Cloud Functions 生成）
  final DateTime createdAt;                 // 統計作成日時

  const MonthlyMetrics({
    required this.monthStart,
    required this.monthEnd,
    required this.weeklyData,
    required this.averageCorrectRate,
    required this.totalStudyTimeMinutes,
    required this.growthScore,
    this.aiInsight,
    required this.createdAt,
  });

  /// Firestore から取得したドキュメントを MonthlyMetrics に変換
  factory MonthlyMetrics.fromJson(Map<String, dynamic> json) {
    final weeklyList = (json['weeklyData'] as List?)
            ?.map((e) => WeeklyMetrics.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    return MonthlyMetrics(
      monthStart: json['monthStart'] is DateTime
          ? json['monthStart'] as DateTime
          : DateTime.parse(json['monthStart'] as String? ?? DateTime.now().toIso8601String()),
      monthEnd: json['monthEnd'] is DateTime
          ? json['monthEnd'] as DateTime
          : DateTime.parse(json['monthEnd'] as String? ?? DateTime.now().toIso8601String()),
      weeklyData: weeklyList,
      averageCorrectRate: (json['averageCorrectRate'] as num?)?.toDouble() ?? 0.0,
      totalStudyTimeMinutes: json['totalStudyTimeMinutes'] as int? ?? 0,
      growthScore: json['growthScore'] as int? ?? 0,
      aiInsight: json['aiInsight'] as String?,
      createdAt: json['createdAt'] is DateTime
          ? json['createdAt'] as DateTime
          : DateTime.parse(json['createdAt'] as String? ?? DateTime.now().toIso8601String()),
    );
  }

  /// MonthlyMetrics を JSON に変換
  Map<String, dynamic> toJson() => {
    'monthStart': monthStart,
    'monthEnd': monthEnd,
    'weeklyData': weeklyData.map((e) => e.toJson()).toList(),
    'averageCorrectRate': averageCorrectRate,
    'totalStudyTimeMinutes': totalStudyTimeMinutes,
    'growthScore': growthScore,
    'aiInsight': aiInsight,
    'createdAt': createdAt,
  };

  /// フィールド更新用の copyWith メソッド
  MonthlyMetrics copyWith({
    DateTime? monthStart,
    DateTime? monthEnd,
    List<WeeklyMetrics>? weeklyData,
    double? averageCorrectRate,
    int? totalStudyTimeMinutes,
    int? growthScore,
    String? aiInsight,
    DateTime? createdAt,
  }) {
    return MonthlyMetrics(
      monthStart: monthStart ?? this.monthStart,
      monthEnd: monthEnd ?? this.monthEnd,
      weeklyData: weeklyData ?? this.weeklyData,
      averageCorrectRate: averageCorrectRate ?? this.averageCorrectRate,
      totalStudyTimeMinutes: totalStudyTimeMinutes ?? this.totalStudyTimeMinutes,
      growthScore: growthScore ?? this.growthScore,
      aiInsight: aiInsight ?? this.aiInsight,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() => 'MonthlyMetrics('
      'month: ${monthStart.month}月, '
      'averageCorrectRate: ${(averageCorrectRate * 100).toStringAsFixed(1)}%, '
      'totalStudyTime: ${totalStudyTimeMinutes}分, '
      'growthScore: $growthScore)';
}
