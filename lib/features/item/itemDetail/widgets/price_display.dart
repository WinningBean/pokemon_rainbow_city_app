import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/quantity_selector.dart';

class PriceDisplay extends StatelessWidget {
  static const double _sectionHeight = 54;
  static double get height => _sectionHeight;

  final double itemPrice;

  const PriceDisplay({super.key, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final isKorean = locale.startsWith('ko');

    final numberFormat = NumberFormat.simpleCurrency(locale: locale);
    final symbol = isKorean ? '원' : numberFormat.currencySymbol;
    final formattedPrice = numberFormat
        .format(itemPrice)
        .replaceAll(numberFormat.currencySymbol, '')
        .trim();
    final currencyLabel = symbol;

    return SizedBox(
      height: _sectionHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [QuantitySelector(), _buildPriceAmount(context, formattedPrice, currencyLabel)],
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
