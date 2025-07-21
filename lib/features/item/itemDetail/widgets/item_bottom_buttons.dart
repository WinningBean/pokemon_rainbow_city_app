import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/utils/price_formatter.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_filled_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_outlined_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/dialogs/confirm_dialog.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/dialogs/info_dialog.dart';
import 'package:pokemon_rainbow_city_app/core/navigation/route_names.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/providers/item_detail_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class ItemBottomButtons extends ConsumerWidget {
  static const double _buttonHeight = 54;
  static const double _sectionVerticalPadding = 8;
  static double get height => _buttonHeight + (_sectionVerticalPadding * 2);

  final Item item;

  const ItemBottomButtons({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = AppLocalizations.of(context)!;
    final totalPrice = ref.watch(totalPriceProvider(item));
    final locale = Localizations.localeOf(context).toString();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: _sectionVerticalPadding),
      child: Row(
        children: [
          Expanded(
            child: AppOutlinedButton(
              text: local.itemCartButton,
              height: _buttonHeight,
              onChanged: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return ConfirmDialog(
                      title: local.itemCartAddedTitle,
                      contenText: local.itemCartDialogDesc,
                      cancelText: local.itemMoreBrowse,
                      confirmText: local.itemGoToCart,
                      onConfirm: () => context.pop(),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AppFilledButton(
              text: local.itemBuyButton,
              height: _buttonHeight,
              onChanged: () async {
                await showCupertinoDialog(
                  context: context,
                  builder: (context) => InfoDialog(
                    message: local.itemBuyComplete(
                      itemName: item.name,
                      totalPrice: formatPriceValue(totalPrice, locale),
                      currency: getCurrencySymbol(locale),
                    ),
                  ),
                );
                if (context.mounted) {
                  context.goNamed(RouteNames.home);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
