import 'package:flutter/material.dart';
import '../../config/app_colors.dart';
import '../../config/app_typography.dart';
import 'app_button.dart';

/// アプリ統一 Dialog コンポーネント
/// Material Design 3 に準拠した複数スタイルをサポート
class AppDialog extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? content;
  final String? contentText;
  final List<AppDialogAction> actions;
  final VoidCallback? onDismiss;
  final bool dismissible;
  final AppDialogStyle style;
  final IconData? icon;
  final Color? iconColor;
  final bool showCloseButton;

  const AppDialog({
    Key? key,
    required this.title,
    this.subtitle,
    this.content,
    this.contentText,
    this.actions = const [],
    this.onDismiss,
    this.dismissible = true,
    this.style = AppDialogStyle.standard,
    this.icon,
    this.iconColor,
    this.showCloseButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => dismissible,
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: _getBackgroundColor(context),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header with close button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (icon != null)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Icon(
                                icon,
                                size: 32,
                                color: iconColor ?? _getIconColor(context),
                              ),
                            ),
                          Text(
                            title,
                            style: AppTypography.headingMedium(),
                          ),
                          if (subtitle != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                subtitle!,
                                style: AppTypography.bodyMedium(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (showCloseButton)
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          onDismiss?.call();
                        },
                        icon: const Icon(Icons.close),
                        iconSize: 24,
                      ),
                  ],
                ),
                // Divider
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Divider(
                    height: 1,
                    color: AppColors.divider,
                  ),
                ),
                // Content
                if (content != null || contentText != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: content ??
                        Text(
                          contentText!,
                          style: AppTypography.bodyMedium(),
                        ),
                  ),
                // Actions
                if (actions.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: _buildActions(context),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        actions.length,
        (index) {
          final action = actions[index];
          return Padding(
            padding: EdgeInsets.only(top: index > 0 ? 12 : 0),
            child: AppButton(
              label: action.label,
              onPressed: () {
                action.onPressed?.call();
                Navigator.of(context).pop();
              },
              style: action.style,
              size: AppButtonSize.medium,
              isFullWidth: true,
              backgroundColor: action.backgroundColor,
              textColor: action.textColor,
            ),
          );
        },
      ),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? AppColors.darkSurface : AppColors.lightSurface;
  }

  Color _getIconColor(BuildContext context) {
    return switch (style) {
      AppDialogStyle.standard => AppColors.primary,
      AppDialogStyle.success => AppColors.success,
      AppDialogStyle.warning => AppColors.warning,
      AppDialogStyle.error => AppColors.error,
      AppDialogStyle.info => AppColors.primary,
    };
  }

  /// Dialog を表示
  static Future<T?> show<T>(
    BuildContext context, {
    required String title,
    String? subtitle,
    String? contentText,
    Widget? content,
    required List<AppDialogAction> actions,
    AppDialogStyle style = AppDialogStyle.standard,
    IconData? icon,
    bool dismissible = true,
    bool showCloseButton = true,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: dismissible,
      builder: (context) => AppDialog(
        title: title,
        subtitle: subtitle,
        contentText: contentText,
        content: content,
        actions: actions,
        style: style,
        icon: icon,
        dismissible: dismissible,
        showCloseButton: showCloseButton,
      ),
    );
  }
}

/// Dialog のアクション定義
class AppDialogAction {
  final String label;
  final VoidCallback? onPressed;
  final AppButtonStyle style;
  final Color? backgroundColor;
  final Color? textColor;

  AppDialogAction({
    required this.label,
    this.onPressed,
    this.style = AppButtonStyle.primary,
    this.backgroundColor,
    this.textColor,
  });
}

/// Dialog のスタイル定義
enum AppDialogStyle {
  standard,
  success,
  warning,
  error,
  info,
}

/// 確認 Dialog ヘルパー
Future<bool> showConfirmDialog(
  BuildContext context, {
  required String title,
  String? message,
  String confirmText = '確認',
  String cancelText = 'キャンセル',
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) async {
  final result = await AppDialog.show<bool>(
    context,
    title: title,
    contentText: message,
    actions: [
      AppDialogAction(
        label: cancelText,
        onPressed: () {
          onCancel?.call();
          Navigator.of(context).pop(false);
        },
        style: AppButtonStyle.outline,
      ),
      AppDialogAction(
        label: confirmText,
        onPressed: () {
          onConfirm?.call();
          Navigator.of(context).pop(true);
        },
        style: AppButtonStyle.primary,
      ),
    ],
  );

  return result ?? false;
}

/// 警告 Dialog ヘルパー
Future<void> showWarningDialog(
  BuildContext context, {
  required String title,
  String? message,
  String buttonText = 'OK',
  VoidCallback? onPressed,
}) async {
  await AppDialog.show(
    context,
    title: title,
    contentText: message,
    icon: Icons.warning_amber_rounded,
    style: AppDialogStyle.warning,
    actions: [
      AppDialogAction(
        label: buttonText,
        onPressed: onPressed,
        style: AppButtonStyle.primary,
      ),
    ],
  );
}

/// エラー Dialog ヘルパー
Future<void> showErrorDialog(
  BuildContext context, {
  required String title,
  String? message,
  String buttonText = 'OK',
  VoidCallback? onPressed,
}) async {
  await AppDialog.show(
    context,
    title: title,
    contentText: message,
    icon: Icons.error_outline,
    style: AppDialogStyle.error,
    actions: [
      AppDialogAction(
        label: buttonText,
        onPressed: onPressed,
        style: AppButtonStyle.danger,
      ),
    ],
  );
}

/// 成功 Dialog ヘルパー
Future<void> showSuccessDialog(
  BuildContext context, {
  required String title,
  String? message,
  String buttonText = 'OK',
  VoidCallback? onPressed,
}) async {
  await AppDialog.show(
    context,
    title: title,
    contentText: message,
    icon: Icons.check_circle_outline,
    style: AppDialogStyle.success,
    actions: [
      AppDialogAction(
        label: buttonText,
        onPressed: onPressed,
        style: AppButtonStyle.primary,
      ),
    ],
  );
}
