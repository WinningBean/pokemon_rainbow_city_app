import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_detail_bottom_bar.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_detail_info.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/features/item/providers/item_provider.dart';

class ItemDetailPage extends ConsumerWidget {
  final int itemId;

  const ItemDetailPage({super.key, required this.itemId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Item? item = ref.watch(itemByIdProvider(itemId));

    if (item == null) {
      return Scaffold(
        appBar: BaseAppBar(actions: [Icon(CustomIcons.cart)]),
        body: Center(child: Text('아이템이 존재하지 않습니다.', style: Theme.of(context).textTheme.bodyMedium)),
      );
    }

    return Scaffold(
      appBar: BaseAppBar(actions: [Icon(CustomIcons.cart)]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return CachedNetworkImage(
                    imageUrl: item.imageUrl,
                    width: double.infinity,
                    height: constraints.maxWidth,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      width: double.infinity,
                      height: constraints.maxWidth,
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      width: double.infinity,
                      height: constraints.maxWidth,
                      color: Theme.of(context).colorScheme.error,
                      child: const Center(child: Icon(Icons.error)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ItemDetailInfo(item: item),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(child: ItemDetailBottomBar(item: item)),
    );
  }
}
