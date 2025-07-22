import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_detail_bottom_bar.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/item_detail_info.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/features/item/providers/item_provider.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// 상품 상세 페이지
class ItemDetailPage extends ConsumerWidget {
  final int itemId; // 상품 ID

  const ItemDetailPage({super.key, required this.itemId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = AppLocalizations.of(context)!;
    final Item? item = ref.watch(itemByIdProvider(itemId)); // 상품 정보 가져오기

    // 상품이 없을 경우 안내 메세지 출력
    // 상품이 있을 경우 상품 정보를 표시
    return item == null
        ? Scaffold(
            appBar: BaseAppBar(actions: [Icon(CustomIcons.cart)]),
            body: Center(
              child: Text(local.itemNotFoundText, style: Theme.of(context).textTheme.bodyMedium),
            ),
          )
        : Scaffold(
            appBar: BaseAppBar(actions: [Icon(CustomIcons.cart)]),
            body: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CachedNetworkImage(
                        imageUrl: item.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        placeholder: (context, url) => Container(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          child: const Center(child: CircularProgressIndicator()),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: Theme.of(context).colorScheme.error,
                          child: const Center(child: Icon(Icons.error)),
                        ),
                      ),
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
