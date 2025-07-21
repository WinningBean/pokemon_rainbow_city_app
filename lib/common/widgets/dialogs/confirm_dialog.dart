import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

//// ConfirmDialog 위젯
/// 사용자가 확인 또는 취소 작업을 수행할 수 있는 dialog
class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    this.onCancel,
    this.confirmText,
    this.cancelText,
  });
  final String title;
  final String content;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final String? confirmText;
  final String? cancelText;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return CupertinoAlertDialog(
      title: Text(title, style: Theme.of(context).textTheme.titleSmall),
      content: Text(content, style: Theme.of(context).textTheme.bodySmall),
      actions: [
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: onCancel ?? () => context.pop(),
          child: Text(
            cancelText ?? local.cancelText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: onConfirm,
          child: Text(
            confirmText ?? local.confirmText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
