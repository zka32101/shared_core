import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// アプリ統一 Typography 定義
/// Noto Sans JP フォントを使用し、Material Design 3 に準拠
class AppTypography {
  /// === ライトモード用テキストスタイル ===

  // 見出し Large (28sp, Bold) - メインタイトル
  static TextStyle headingLarge({Color color = const Color(0xFF1F2937)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      height: 1.3,
      letterSpacing: -0.02,
      color: color,
    );
  }

  // 見出し Medium (22sp, Bold) - セクションタイトル
  static TextStyle headingMedium({Color color = const Color(0xFF1F2937)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 1.35,
      letterSpacing: -0.01,
      color: color,
    );
  }

  // 見出し Small (18sp, Bold) - サブセクションタイトル
  static TextStyle headingSmall({Color color = const Color(0xFF1F2937)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      height: 1.4,
      color: color,
    );
  }

  // 本文 Large (16sp, Regular) - メイン本文
  static TextStyle bodyLarge({Color color = const Color(0xFF1F2937)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  // 本文 Medium (14sp, Regular) - 標準本文
  static TextStyle bodyMedium({Color color = const Color(0xFF1F2937)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  // 本文 Small (12sp, Regular) - 補助テキスト
  static TextStyle bodySmall({Color color = const Color(0xFF6B7280)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  // ラベル Large (14sp, Medium) - ボタンラベル
  static TextStyle labelLarge({Color color = const Color(0xFF1F2937)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.4,
      letterSpacing: 0.05,
      color: color,
    );
  }

  // ラベル Medium (12sp, Medium) - 小ラベル
  static TextStyle labelMedium({Color color = const Color(0xFF6B7280)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.4,
      letterSpacing: 0.05,
      color: color,
    );
  }

  // ラベル Small (11sp, Medium) - 最小ラベル
  static TextStyle labelSmall({Color color = const Color(0xFF6B7280)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      height: 1.4,
      letterSpacing: 0.05,
      color: color,
    );
  }

  /// === ダークモード用テキストスタイル ===

  // ダークモード見出し Large
  static TextStyle darkHeadingLarge({Color color = const Color(0xFFF3F4F6)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      height: 1.3,
      letterSpacing: -0.02,
      color: color,
    );
  }

  // ダークモード見出し Medium
  static TextStyle darkHeadingMedium({Color color = const Color(0xFFF3F4F6)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 1.35,
      letterSpacing: -0.01,
      color: color,
    );
  }

  // ダークモード見出し Small
  static TextStyle darkHeadingSmall({Color color = const Color(0xFFF3F4F6)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      height: 1.4,
      color: color,
    );
  }

  // ダークモード本文 Large
  static TextStyle darkBodyLarge({Color color = const Color(0xFFF3F4F6)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  // ダークモード本文 Medium
  static TextStyle darkBodyMedium({Color color = const Color(0xFFF3F4F6)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  // ダークモード本文 Small
  static TextStyle darkBodySmall({Color color = const Color(0xFFD1D5DB)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  /// === 特殊スタイル ===

  // キャプション（注釈）
  static TextStyle caption({Color color = const Color(0xFF9CA3AF)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 11,
      fontWeight: FontWeight.normal,
      height: 1.4,
      letterSpacing: 0.02,
      color: color,
    );
  }

  // オーバーライン（上付き装飾テキスト）
  static TextStyle overline({Color color = const Color(0xFF6B7280)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 1.6,
      letterSpacing: 0.15,
      color: color,
      decoration: TextDecoration.overline,
    );
  }

  // ボタンテキスト（各種ボタン用）
  static TextStyle buttonText({Color color = const Color(0xFFFFFFFF)}) {
    return GoogleFonts.notoSansJp(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 1.4,
      letterSpacing: 0.02,
      color: color,
    );
  }

  /// === スケーラブルサイズシステム ===

  /// 画面幅に基づいてフォントサイズをスケール
  static double scaleSize(BuildContext context, double baseSize) {
    final screenWidth = MediaQuery.of(context).size.width;
    const baseScreenWidth = 360.0; // 基準スクリーン幅
    return baseSize * (screenWidth / baseScreenWidth).clamp(0.8, 1.2);
  }

  /// スクリーンサイズに基づいて適応フォントスタイルを返す
  static TextStyle adaptiveHeading(
    BuildContext context, {
    Color color = const Color(0xFF1F2937),
  }) {
    final scaledSize = scaleSize(context, 28);
    return GoogleFonts.notoSansJp(
      fontSize: scaledSize,
      fontWeight: FontWeight.bold,
      height: 1.3,
      letterSpacing: -0.02,
      color: color,
    );
  }

  /// スクリーンサイズに基づいて適応ボディテキストを返す
  static TextStyle adaptiveBody(
    BuildContext context, {
    Color color = const Color(0xFF1F2937),
  }) {
    final scaledSize = scaleSize(context, 14);
    return GoogleFonts.notoSansJp(
      fontSize: scaledSize,
      fontWeight: FontWeight.normal,
      height: 1.5,
      letterSpacing: 0.02,
      color: color,
    );
  }

  /// === Material Design 3 TextTheme の構築 ===

  static TextTheme buildTextTheme() {
    return TextTheme(
      displayLarge: headingLarge(),
      displayMedium: headingMedium(),
      displaySmall: headingSmall(),
      headlineLarge: headingLarge(),
      headlineMedium: headingMedium(),
      headlineSmall: headingSmall(),
      titleLarge: labelLarge(),
      titleMedium: labelMedium(),
      titleSmall: labelSmall(),
      bodyLarge: bodyLarge(),
      bodyMedium: bodyMedium(),
      bodySmall: bodySmall(),
      labelLarge: labelLarge(),
      labelMedium: labelMedium(),
      labelSmall: labelSmall(),
    );
  }

  /// ダークモード用 TextTheme の構築
  static TextTheme buildDarkTextTheme() {
    return TextTheme(
      displayLarge: darkHeadingLarge(),
      displayMedium: darkHeadingMedium(),
      displaySmall: darkHeadingSmall(),
      headlineLarge: darkHeadingLarge(),
      headlineMedium: darkHeadingMedium(),
      headlineSmall: darkHeadingSmall(),
      titleLarge: labelLarge(),
      titleMedium: labelMedium(),
      titleSmall: labelSmall(),
      bodyLarge: darkBodyLarge(),
      bodyMedium: darkBodyMedium(),
      bodySmall: darkBodySmall(),
      labelLarge: labelLarge(),
      labelMedium: labelMedium(),
      labelSmall: labelSmall(),
    );
  }
}
