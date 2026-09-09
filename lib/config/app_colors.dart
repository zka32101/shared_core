import 'package:flutter/material.dart';

/// 教科別プライマリカラー定義
class SubjectColors {
  // 国語（日本語）- 赤系
  static const Color japanese = Color(0xFFE63946);
  static const Color japaneseLight = Color(0xFFFF6B7A);
  static const Color japaneseDark = Color(0xFFC1121F);

  // 算数 - 青系
  static const Color math = Color(0xFF1E40AF);
  static const Color mathLight = Color(0xFF3B82F6);
  static const Color mathDark = Color(0xFF1E3A8A);

  // 理科 - 緑系
  static const Color science = Color(0xFF059669);
  static const Color scienceLight = Color(0xFF10B981);
  static const Color scienceDark = Color(0xFF047857);

  // 英語 - オレンジ系
  static const Color english = Color(0xFFF97316);
  static const Color englishLight = Color(0xFFFB923C);
  static const Color englishDark = Color(0xFDEA580C);

  // 社会 - 紫系
  static const Color social = Color(0xFF7C3AED);
  static const Color socialLight = Color(0xA855F7);
  static const Color socialDark = Color(0xFF5B21B6);

  // プログラミング - インディゴ系
  static const Color programming = Color(0xFF4F46E5);
  static const Color programmingLight = Color(0xFF6366F1);
  static const Color programmingDark = Color(0xFF3730A3);

  // 道徳 - ピンク系
  static const Color morality = Color(0xFFEC4899);
  static const Color moralityLight = Color(0xFFF472B6);
  static const Color moralityDark = Color(0xFFBE185D);

  /// 教科 ID から Primary カラーを取得
  static Color getSubjectPrimary(String subject) {
    return switch (subject) {
      'japanese' => japanese,
      'math' => math,
      'science' => science,
      'english' => english,
      'social' => social,
      'programming' => programming,
      'morality' => morality,
      _ => blue,
    };
  }

  /// 教科 ID から Light カラーを取得
  static Color getSubjectLight(String subject) {
    return switch (subject) {
      'japanese' => japaneseLight,
      'math' => mathLight,
      'science' => scienceLight,
      'english' => englishLight,
      'social' => socialLight,
      'programming' => programmingLight,
      'morality' => moralityLight,
      _ => blueLight,
    };
  }

  /// 教科 ID から Dark カラーを取得
  static Color getSubjectDark(String subject) {
    return switch (subject) {
      'japanese' => japaneseDark,
      'math' => mathDark,
      'science' => scienceDark,
      'english' => englishDark,
      'social' => socialDark,
      'programming' => programmingDark,
      'morality' => moralityDark,
      _ => blueDark,
    };
  }
}

/// 統一カラーパレット（全教科共通）
class AppColors {
  // プライマリ・セカンダリカラー
  static const Color primary = Color(0xFF1E40AF);
  static const Color secondary = Color(0xFF10B981);
  static const Color tertiary = Color(0xFFF59E0B);

  // エラー・ウォーニング・サクセス
  static const Color error = Color(0xFFDC2626);
  static const Color errorLight = Color(0xFFFEE2E2);
  static const Color errorDark = Color(0xFF7F1D1D);

  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFEF3C7);
  static const Color warningDark = Color(0xFF78350F);

  static const Color success = Color(0xFF10B981);
  static const Color successLight = Color(0xD1F2EB);
  static const Color successDark = Color(0xFF065F46);

  // ニュートラルカラー（グレースケール）
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);

  // ライト・ダークモード用の背景色
  static const Color lightBackground = Color(0xFFFAFAFA);
  static const Color darkBackground = Color(0xFF121212);

  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color darkSurface = Color(0xFF1E1E1E);

  // テキストカラー
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textTertiary = Color(0xFF9CA3AF);
  static const Color textHint = Color(0xFFD1D5DB);

  // ダークモード用テキストカラー
  static const Color darkTextPrimary = Color(0xFFF3F4F6);
  static const Color darkTextSecondary = Color(0xFFD1D5DB);
  static const Color darkTextTertiary = Color(0xFF9CA3AF);

  // ブルー（デフォルト）
  static const Color blue = Color(0xFF2563EB);
  static const Color blueLight = Color(0xFF3B82F6);
  static const Color blueDark = Color(0xFF1E40AF);

  // カスタムカラー
  static const Color divider = Color(0xFFE5E7EB);
  static const Color shadow = Color(0x1A000000);
  static const Color overlay = Color(0x4D000000);

  // アクセシビリティ対応：コントラスト比が高い色
  static const Color highContrastPrimary = Color(0xFF000000);
  static const Color highContrastSecondary = Color(0xFFFFFFFF);
}

/// ライトモード専用カラー定義
class LightColors {
  static const Color background = AppColors.lightBackground;
  static const Color surface = AppColors.lightSurface;
  static const Color primary = AppColors.primary;
  static const Color secondary = AppColors.secondary;
  static const Color textPrimary = AppColors.textPrimary;
  static const Color textSecondary = AppColors.textSecondary;
  static const Color divider = AppColors.divider;
  static const Color error = AppColors.error;
  static const Color success = AppColors.success;
  static const Color warning = AppColors.warning;
}

/// ダークモード専用カラー定義
class DarkColors {
  static const Color background = AppColors.darkBackground;
  static const Color surface = AppColors.darkSurface;
  static const Color primary = Color(0xFF3B82F6);
  static const Color secondary = Color(0xFF34D399);
  static const Color textPrimary = AppColors.darkTextPrimary;
  static const Color textSecondary = AppColors.darkTextSecondary;
  static const Color divider = Color(0xFF404040);
  static const Color error = Color(0xFFFCA5A5);
  static const Color success = Color(0xFF6EE7B7);
  static const Color warning = Color(0xFFFCD34D);
}
