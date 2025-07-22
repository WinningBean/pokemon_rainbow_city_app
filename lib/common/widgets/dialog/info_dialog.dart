import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// InfoDialog 위젯
/// 사용자가 정보를 확인할 수 있는 dialog
class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key, required this.message, this.buttonText});

  final String message;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return CupertinoAlertDialog(
      content: Text(message, style: Theme.of(context).textTheme.titleSmall),
      actions: [
        CupertinoDialogAction(
          child: Text(
            buttonText ?? local.confirmText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          onPressed: () => context.pop(),
        ),
      ],
    );
  }
}
