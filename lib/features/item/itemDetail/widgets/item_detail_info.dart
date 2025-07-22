import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/features/item/widgets/item_info_count_label.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 상세 정보 위젯
/// 상품의 수량, 이름, 설명을 표시합니다.
class ItemDetailInfo extends StatelessWidget {
  final Item item; // 상품 정보

  const ItemDetailInfo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemInfoCountLabel(count: item.count),
        SizedBox(height: 10),
        Text(item.name, style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 20),
        Text(item.description, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
