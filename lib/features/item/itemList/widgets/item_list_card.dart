import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokemon_rainbow_city_app/common/utils/price_formatter.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/features/item/widgets/item_info_count_label.dart';

class ItemListCard extends StatelessWidget {
  final Item item;
  const ItemListCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  fit: BoxFit.cover,
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
          ),
          // 텍스트 영역
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 남은 수량
                ItemInfoCountLabel(count: item.count),
                const SizedBox(height: 4),
                // 상품 이름
                Text(item.name, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 4),
                // 가격
                Row(
                  children: [
                    Text(
                      formatPriceValue(item.price, locale),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 2),
                    Text(getCurrencySymbol(locale), style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
