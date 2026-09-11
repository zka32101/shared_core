import 'package:flutter/material.dart';
import '../../config/app_colors.dart';

/// アプリ統一 Card コンポーネント
/// Material Design 3 に準拠した複数スタイルをサポート
class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRadius;
  final double elevation;
  final VoidCallback? onTap;
  final AppCardStyle style;
  final bool isClickable;
  final bool isHighlighted;
  final Border? customBorder;

  const AppCard({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
    this.backgroundColor,
    this.borderColor,
    this.borderRadius = 12,
    this.elevation = 2,
    this.onTap,
    this.style = AppCardStyle.standard,
    this.isClickable = false,
    this.isHighlighted = false,
    this.customBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: isClickable ? onTap : null,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: _getBackgroundColor(context),
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          border: customBorder ??
              (style == AppCardStyle.outline
                  ? Border.all(
                      color: borderColor ?? AppColors.divider,
                      width: 1.5,
                    )
                  : null),
          boxShadow: style == AppCardStyle.standard || style == AppCardStyle.elevated
              ? [
                  BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: elevation,
                    offset: Offset(0, elevation == 0 ? 0 : 2),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: isClickable ? onTap : null,
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            child: Padding(
              padding: padding ?? const EdgeInsets.all(16),
              child: _buildContent(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    switch (style) {
      case AppCardStyle.standard:
        return child;
      case AppCardStyle.elevated:
        return child;
      case AppCardStyle.outline:
        return child;
      case AppCardStyle.filled:
        return child;
      case AppCardStyle.info:
        return child;
      case AppCardStyle.success:
        return child;
      case AppCardStyle.warning:
        return child;
      case AppCardStyle.error:
        return child;
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (backgroundColor != null) {
      return backgroundColor!;
    }

    return switch (style) {
      AppCardStyle.standard =>
        isDark ? AppColors.darkSurface : AppColors.lightSurface,
      AppCardStyle.elevated =>
        isDark ? AppColors.darkSurface : AppColors.lightSurface,
      AppCardStyle.outline =>
        isDark ? AppColors.darkBackground : AppColors.lightBackground,
      AppCardStyle.filled =>
        isDark ? Color(0xFF2A2A2A) : AppColors.grey100,
      AppCardStyle.info =>
        isDark ? const Color(0x1A3B82F6) : const Color(0xFFDEEBFF),
      AppCardStyle.success =>
        isDark ? const Color(0x1A10B981) : const Color(0xFFD1F2EB),
      AppCardStyle.warning =>
        isDark ? const Color(0x1AF59E0B) : const Color(0xFFFEF3C7),
      AppCardStyle.error =>
        isDark ? const Color(0x1ADC2626) : const Color(0xFFFEE2E2),
    };
  }
}

/// Card のスタイル定義
enum AppCardStyle {
  /// 標準的なカード
  standard,

  /// 影が強く表示されるカード
  elevated,

  /// 枠線のみのカード
  outline,

  /// 背景色が強く表示されるカード
  filled,

  /// 情報を表示するカード（青系）
  info,

  /// 成功を表示するカード（緑系）
  success,

  /// 警告を表示するカード（オレンジ系）
  warning,

  /// エラーを表示するカード（赤系）
  error,
}

/// Image を含む Card コンポーネント
class AppImageCard extends StatelessWidget {
  final String imageUrl;
  final Widget child;
  final double imageHeight;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double? borderRadius;
  final VoidCallback? onTap;
  final bool isClickable;

  const AppImageCard({
    Key? key,
    required this.imageUrl,
    required this.child,
    this.imageHeight = 160,
    this.padding = const EdgeInsets.all(12),
    this.margin = const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
    this.backgroundColor,
    this.borderRadius = 12,
    this.onTap,
    this.isClickable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isClickable ? onTap : null,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image section
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius ?? 12),
                  topRight: Radius.circular(borderRadius ?? 12),
                ),
                child: Image.network(
                  imageUrl,
                  height: imageHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: imageHeight,
                      color: AppColors.grey200,
                      child: const Center(
                        child: Icon(Icons.image_not_supported),
                      ),
                    );
                  },
                ),
              ),
              // Content section
              Padding(
                padding: padding ?? const EdgeInsets.all(12),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 横並び Card コンポーネント
class AppHorizontalCard extends StatelessWidget {
  final Widget leadingWidget;
  final Widget child;
  final double leadingWidth;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double? borderRadius;
  final VoidCallback? onTap;
  final bool isClickable;

  const AppHorizontalCard({
    Key? key,
    required this.leadingWidget,
    required this.child,
    this.leadingWidth = 100,
    this.padding = const EdgeInsets.all(12),
    this.margin = const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
    this.backgroundColor,
    this.borderRadius = 12,
    this.onTap,
    this.isClickable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isClickable ? onTap : null,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          child: Row(
            children: [
              // Leading widget
              SizedBox(
                width: leadingWidth,
                child: leadingWidget,
              ),
              // Content section
              Expanded(
                child: Padding(
                  padding: padding ?? const EdgeInsets.all(12),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
