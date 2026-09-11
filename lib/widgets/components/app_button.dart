import 'package:flutter/material.dart';
import '../../config/app_colors.dart';
import '../../config/app_typography.dart';

/// アプリ統一 Button コンポーネント
/// Material Design 3 に準拠した複数スタイルをサポート
class AppButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isEnabled;
  final AppButtonStyle style;
  final AppButtonSize size;
  final Color? backgroundColor;
  final Color? textColor;
  final IconData? icon;
  final bool isFullWidth;
  final double? customHeight;
  final double? customWidth;
  final bool showBorder;

  const AppButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.style = AppButtonStyle.primary,
    this.size = AppButtonSize.medium,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.isFullWidth = false,
    this.customHeight,
    this.customWidth,
    this.showBorder = false,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onPressed() {
    if (widget.isEnabled && !widget.isLoading) {
      _animationController.forward().then((_) {
        _animationController.reverse();
        widget.onPressed();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: _buildButton(),
    );
  }

  Widget _buildButton() {
    final theme = Theme.of(context);

    switch (widget.style) {
      case AppButtonStyle.primary:
        return _buildPrimaryButton(theme);
      case AppButtonStyle.secondary:
        return _buildSecondaryButton(theme);
      case AppButtonStyle.tertiary:
        return _buildTertiaryButton(theme);
      case AppButtonStyle.outline:
        return _buildOutlineButton(theme);
      case AppButtonStyle.text:
        return _buildTextButton(theme);
      case AppButtonStyle.danger:
        return _buildDangerButton(theme);
      case AppButtonStyle.success:
        return _buildSuccessButton(theme);
    }
  }

  Widget _buildPrimaryButton(ThemeData theme) {
    final backgroundColor = widget.backgroundColor ?? AppColors.primary;
    final textColor = widget.textColor ?? Colors.white;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: ElevatedButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize())
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey300,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
          elevation: widget.isEnabled ? 2 : 0,
          shadowColor: widget.isEnabled ? backgroundColor.withOpacity(0.4) : Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildSecondaryButton(ThemeData theme) {
    final backgroundColor = widget.backgroundColor ?? AppColors.secondary;
    final textColor = widget.textColor ?? Colors.white;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: ElevatedButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize())
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey300,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
          elevation: widget.isEnabled ? 2 : 0,
          shadowColor: widget.isEnabled ? backgroundColor.withOpacity(0.4) : Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildTertiaryButton(ThemeData theme) {
    final backgroundColor = widget.backgroundColor ?? AppColors.tertiary;
    final textColor = widget.textColor ?? Colors.white;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: ElevatedButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize())
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey300,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
          elevation: widget.isEnabled ? 2 : 0,
          shadowColor: widget.isEnabled ? backgroundColor.withOpacity(0.4) : Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildOutlineButton(ThemeData theme) {
    final outlineColor = widget.backgroundColor ?? AppColors.primary;
    final textColor = widget.textColor ?? outlineColor;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: OutlinedButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize(), color: textColor)
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: textColor,
          side: BorderSide(
            color: outlineColor,
            width: 2,
          ),
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
        ),
      ),
    );
  }

  Widget _buildTextButton(ThemeData theme) {
    final textColor = widget.textColor ?? AppColors.primary;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: TextButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize(), color: textColor)
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: TextButton.styleFrom(
          foregroundColor: textColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
        ),
      ),
    );
  }

  Widget _buildDangerButton(ThemeData theme) {
    final backgroundColor = widget.backgroundColor ?? AppColors.error;
    final textColor = widget.textColor ?? Colors.white;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: ElevatedButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize())
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey300,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
          elevation: widget.isEnabled ? 2 : 0,
          shadowColor: widget.isEnabled ? backgroundColor.withOpacity(0.4) : Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildSuccessButton(ThemeData theme) {
    final backgroundColor = widget.backgroundColor ?? AppColors.success;
    final textColor = widget.textColor ?? Colors.white;
    final padding = _getPadding();
    final height = widget.customHeight ?? _getHeight();

    return SizedBox(
      width: widget.isFullWidth ? double.infinity : widget.customWidth,
      height: height,
      child: ElevatedButton.icon(
        onPressed: widget.isEnabled && !widget.isLoading ? _onPressed : null,
        icon: widget.isLoading
            ? SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  strokeWidth: 2,
                ),
              )
            : (widget.icon != null
                ? Icon(widget.icon, size: _getIconSize())
                : const SizedBox.shrink()),
        label: Text(
          widget.label,
          style: AppTypography.buttonText(color: textColor),
          overflow: TextOverflow.ellipsis,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: AppColors.grey300,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius()),
          ),
          elevation: widget.isEnabled ? 2 : 0,
          shadowColor: widget.isEnabled ? backgroundColor.withOpacity(0.4) : Colors.transparent,
        ),
      ),
    );
  }

  EdgeInsets _getPadding() {
    return switch (widget.size) {
      AppButtonSize.small => const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      AppButtonSize.medium => const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      AppButtonSize.large => const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      AppButtonSize.extraLarge => const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    };
  }

  double _getHeight() {
    return switch (widget.size) {
      AppButtonSize.small => 32,
      AppButtonSize.medium => 44,
      AppButtonSize.large => 48,
      AppButtonSize.extraLarge => 52,
    };
  }

  double _getBorderRadius() {
    return switch (widget.size) {
      AppButtonSize.small => 8,
      AppButtonSize.medium => 12,
      AppButtonSize.large => 12,
      AppButtonSize.extraLarge => 12,
    };
  }

  double _getIconSize() {
    return switch (widget.size) {
      AppButtonSize.small => 16,
      AppButtonSize.medium => 18,
      AppButtonSize.large => 20,
      AppButtonSize.extraLarge => 22,
    };
  }
}

/// Button のスタイル定義
enum AppButtonStyle {
  primary,
  secondary,
  tertiary,
  outline,
  text,
  danger,
  success,
}

/// Button のサイズ定義
enum AppButtonSize {
  small,
  medium,
  large,
  extraLarge,
}
