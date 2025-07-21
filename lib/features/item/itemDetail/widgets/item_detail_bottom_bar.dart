import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_bottom_buttons.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/price_display.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 상세 하단 바 위젯
/// 가격 표시와 하단 버튼을 포함합니다.
class ItemDetailBottomBar extends StatelessWidget {
  static double get height => PriceDisplay.height + ItemBottomButtons.height; // 전체 높이

  final Item item; // 상품 정보

  const ItemDetailBottomBar({super.key, required this.item});

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
          PriceDisplay(item: item),
          ItemBottomButtons(item: item),
        ],
      ),
    );
  }
}
