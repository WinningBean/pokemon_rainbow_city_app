import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// 상품 정보의 남은 수량을 표시하는 위젯
class ItemInfoCountLabel extends StatelessWidget {
  final int count;

  const ItemInfoCountLabel({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Row(
      children: [
        Text(
          local.itemRemainingCountLabel,
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(width: 2),
        Text(
          '$count',
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      ],
    );
  }
}
