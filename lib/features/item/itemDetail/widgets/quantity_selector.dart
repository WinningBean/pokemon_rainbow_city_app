import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/counter_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/dialogs/confirm_dialog.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/dialogs/info_dialog.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/providers/item_detail_provider.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class QuantitySelector extends ConsumerWidget {
  final int maxCount; // 최대 구매 가능 수량

  const QuantitySelector({super.key, required this.maxCount});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(quantityProvider);

    return Row(
      children: [
        CounterButton(
          icon: CustomIcons.minus,
          onChanged: () => _updateQuantity(context, ref, quantity - 1, maxCount),
        ),
        SizedBox(
          width: 72,
          child: GestureDetector(
            onTap: () => _editQuantity(context, ref, quantity, maxCount),
            child: Text(
              '$quantity',
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ),
        CounterButton(
          icon: CustomIcons.plus,
          onChanged: () => _updateQuantity(context, ref, quantity + 1, maxCount),
        ),
      ],
    );
  }

  void _editQuantity(BuildContext context, WidgetRef ref, int quantity, int maxCount) async {
    final local = AppLocalizations.of(context)!;
    final controller = TextEditingController(text: quantity.toString());

    final newValue = await showDialog<int>(
      context: context,
      builder: (context) => ConfirmDialog(
        title: local.quantityInputTitle,
        customContent: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            CupertinoTextField(controller: controller, keyboardType: TextInputType.number),
          ],
        ),
        onConfirm: () {
          final value = int.tryParse(controller.text);
          GoRouter.of(context).pop(value);
        },
      ),
    );

    if (newValue != null) {
      _updateQuantity(context, ref, newValue, maxCount);
    }
  }

  void _updateQuantity(BuildContext context, WidgetRef ref, int value, int maxCount) {
    final local = AppLocalizations.of(context)!;

    if (value < 1 || value > maxCount) {
      showDialog(
        context: context,
        builder: (context) => InfoDialog(message: local.quantityInputError(maxCount: maxCount)),
      );
      return;
    }
    ref.read(quantityProvider.notifier).state = value;
  }
}
