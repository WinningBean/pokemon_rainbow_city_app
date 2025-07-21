import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_detail_bottom_bar.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_detail_info.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final int itemId;

  const ItemDetailPage({super.key, required this.itemId});
  @override
  Widget build(BuildContext context) {
    final item = dummyItems.firstWhere((element) => element.id == itemId);

    return Scaffold(
      appBar: BaseAppBar(actions: [Icon(CustomIcons.truck)]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Image.network(
                    item.imageUrl,
                    width: double.infinity,
                    height: constraints.maxWidth,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ItemDetailInfo(item: item),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(child: ItemDetailBottomBar(itemPrice: item.price)),
    );
  }
}
