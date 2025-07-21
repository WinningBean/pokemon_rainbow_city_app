import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/features/item/widgets/item_info_count_label.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

class ItemDetailInfo extends StatelessWidget {
  final Item item;
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
