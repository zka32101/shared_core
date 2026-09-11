import 'package:flutter/material.dart';
import '../../config/app_colors.dart';
import '../../config/app_typography.dart';

/// アプリ統一 AppBar コンポーネント
/// Material Design 3 に準拠した AppBar を提供
class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subtitle;
  final List<Widget>? actions;
  final Widget? leading;
  final VoidCallback? onLeadingPressed;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double elevation;
  final bool centerTitle;
  final bool showLeadingButton;
  final AppAppBarStyle style;
  final double? toolbarHeight;

  const AppAppBar({
    Key? key,
    required this.title,
    this.subtitle,
    this.actions,
    this.leading,
    this.onLeadingPressed,
    this.bottom,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation = 0,
    this.centerTitle = true,
    this.showLeadingButton = true,
    this.style = AppAppBarStyle.standard,
    this.toolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(
        (toolbarHeight ?? 56) + (bottom?.preferredSize.height ?? 0),
      );

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      title: _buildTitle(),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: AppTypography.bodySmall(),
            )
          : null,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor ?? _getBackgroundColor(context),
      foregroundColor: foregroundColor ?? _getForegroundColor(context),
      elevation: elevation,
      scrolledUnderElevation: 4,
      leading: _buildLeadingWidget(context),
      actions: actions,
      bottom: bottom,
      toolbarHeight: toolbarHeight,
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: AppTypography.headingSmall(),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget? _buildLeadingWidget(BuildContext context) {
    if (!showLeadingButton) {
      return null;
    }

    if (leading != null) {
      return leading;
    }

    // Return default back button if there's a route to pop
    return Navigator.of(context).canPop()
        ? IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
          )
        : null;
  }

  Color _getBackgroundColor(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return switch (style) {
      AppAppBarStyle.standard =>
        isDark ? AppColors.darkSurface : AppColors.lightSurface,
      AppAppBarStyle.primary =>
        AppColors.primary,
      AppAppBarStyle.secondary =>
        AppColors.secondary,
      AppAppBarStyle.transparent =>
        Colors.transparent,
      AppAppBarStyle.gradient =>
        AppColors.primary,
    };
  }

  Color _getForegroundColor(BuildContext context) {
    return switch (style) {
      AppAppBarStyle.standard => AppColors.textPrimary,
      AppAppBarStyle.primary => Colors.white,
      AppAppBarStyle.secondary => Colors.white,
      AppAppBarStyle.transparent => AppColors.textPrimary,
      AppAppBarStyle.gradient => Colors.white,
    };
  }
}

/// AppBar のスタイル定義
enum AppAppBarStyle {
  /// 標準的な AppBar
  standard,

  /// プライマリカラーの AppBar
  primary,

  /// セカンダリカラーの AppBar
  secondary,

  /// 透明な AppBar
  transparent,

  /// グラデーション AppBar
  gradient,
}

/// グラデーション AppBar
class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subtitle;
  final List<Widget>? actions;
  final Widget? leading;
  final VoidCallback? onLeadingPressed;
  final List<Color> gradientColors;
  final bool centerTitle;
  final bool showLeadingButton;
  final double? toolbarHeight;

  const GradientAppBar({
    Key? key,
    required this.title,
    this.subtitle,
    this.actions,
    this.leading,
    this.onLeadingPressed,
    this.gradientColors = const [Color(0xFF1E40AF), Color(0xFF3B82F6)],
    this.centerTitle = true,
    this.showLeadingButton = true,
    this.toolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? 56);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AppBar(
        title: Text(
          title,
          style: AppTypography.headingSmall(color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: AppTypography.bodySmall(color: Colors.white70),
              )
            : null,
        centerTitle: centerTitle,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: _buildLeadingWidget(context),
        actions: actions,
        toolbarHeight: toolbarHeight,
      ),
    );
  }

  Widget? _buildLeadingWidget(BuildContext context) {
    if (!showLeadingButton) {
      return null;
    }

    if (leading != null) {
      return leading;
    }

    return Navigator.of(context).canPop()
        ? IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
          )
        : null;
  }
}

/// Search AppBar
class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final VoidCallback? onClearPressed;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final Color? backgroundColor;

  const SearchAppBar({
    Key? key,
    this.hintText = '検索...',
    required this.onChanged,
    this.onClearPressed,
    this.controller,
    this.decoration,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.backgroundColor ?? AppColors.primary,
      elevation: 0,
      leadingWidth: 0,
      title: TextField(
        controller: _controller,
        decoration: widget.decoration ??
            InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: _controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _controller.clear();
                        widget.onClearPressed?.call();
                        widget.onChanged('');
                      },
                    )
                  : null,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
        onChanged: widget.onChanged,
      ),
    );
  }
}

/// シンプルな AppBar ビルダー
class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double elevation;

  const SimpleAppBar({
    Key? key,
    required this.title,
    this.onBackPressed,
    this.actions,
    this.backgroundColor,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTypography.headingSmall()),
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation,
      centerTitle: true,
      leading: Navigator.of(context).canPop()
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      actions: actions,
    );
  }
}
