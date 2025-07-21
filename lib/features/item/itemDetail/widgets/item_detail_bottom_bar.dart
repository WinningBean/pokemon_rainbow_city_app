import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_bottom_buttons.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/price_display.dart';

class ItemDetailBottomBar extends StatelessWidget {
  final double itemPrice;

  const ItemDetailBottomBar({super.key, required this.itemPrice});

  static double get height => PriceDisplay.height + ItemBottomButtons.height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(top: BorderSide(color: Theme.of(context).colorScheme.primaryContainer)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PriceDisplay(itemPrice: itemPrice),
          ItemBottomButtons(),
        ],
      ),
    );
  }
}
