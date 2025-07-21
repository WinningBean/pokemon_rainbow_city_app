import 'package:flutter/material.dart';

class ItemInfoCountLabel extends StatelessWidget {
  final int count;

  const ItemInfoCountLabel({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '남은 수량 :',
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
