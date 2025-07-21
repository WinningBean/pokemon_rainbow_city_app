import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/common/utils/price_formatter.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/quantity_selector.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/providers/item_detail_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

class PriceDisplay extends ConsumerWidget {
  static const double _sectionHeight = 54;
  static double get height => _sectionHeight;

  final Item item;
  const PriceDisplay({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = Localizations.localeOf(context).toString();
    final totalPrice = ref.watch(totalPriceProvider(item));

    return SizedBox(
      height: _sectionHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuantitySelector(maxCount: item.count),
          _buildPriceAmount(
            context,
            formatPriceValue(totalPrice, locale),
            getCurrencySymbol(locale),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceAmount(BuildContext context, String formattedPrice, String currencyLabel) {
    return Row(
      children: [
        Text(
          formattedPrice,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(width: 2),
        Text(
          currencyLabel,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      ],
    );
  }
}
