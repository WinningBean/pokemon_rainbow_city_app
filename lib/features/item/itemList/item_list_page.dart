import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_floating_action_button.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/core/navigation/route_names.dart';
import 'package:pokemon_rainbow_city_app/features/item/providers/item_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/widgets/item_list_card.dart';

/// 상품 목록 페이지
class ItemListPage extends ConsumerWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemListProvider);

    return Scaffold(
      appBar: BaseAppBar(
        actions: [Icon(CustomIcons.search), SizedBox(width: 24), Icon(CustomIcons.cart)],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
        itemCount: (items.length / 2).ceil(),
        itemBuilder: (context, index) {
          final first = items[index * 2];
          final second = index * 2 + 1 < items.length ? items[index * 2 + 1] : null;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: ItemListCard(item: first)),
              const SizedBox(width: 10),
              if (second != null) Expanded(child: ItemListCard(item: second)) else const Spacer(),
            ],
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 20),
      ),
      floatingActionButton: AppFloatingActionButton(
        icon: Icons.add,
        onChanged: () {
          context.pushNamed(RouteNames.itemAdd);
        },
      ),
    );
  }
}
