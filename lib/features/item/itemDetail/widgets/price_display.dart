import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/common/utils/price_formatter.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/widgets/quantity_selector.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/providers/item_detail_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 가격 표시 위젯
/// 수량 선택 위젯과 총 가격 표시를 포함합니다.
class PriceDisplay extends ConsumerWidget {
  static const double _sectionHeight = 54; // 섹션 높이
  static double get height => _sectionHeight;

  final Item item; // 상품

  const PriceDisplay({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = Localizations.localeOf(context).toString();
    final totalPrice = ref.watch(totalPriceProvider(item)); // 총 가격 계산

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

  /// 가격 표시 위젯
  /// 가격과 통화 단위를 표시합니다.
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
