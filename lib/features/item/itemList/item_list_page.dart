import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_floating_action_button.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/core/navigation/route_names.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/features/item/providers/item_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/widgets/item_list_card.dart';

/// 상품 목록 페이지
/// 상품 목록을 표시하며, 상품 추가 버튼이 포함되어 있습니다.
class ItemListPage extends ConsumerWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemListProvider); // 상품 목록 가져오기

    return Scaffold(
      appBar: BaseAppBar(
        actions: [Icon(CustomIcons.search), SizedBox(width: 24), Icon(CustomIcons.cart)],
      ),
      // 상품 목록이 비어있을 경우 안내 메시지 표시
      // 상품이 있을 경우 상품 목록을 표시합니다.
      body: items.isEmpty
          ? Center(child: Text('상품 목록이 없습니다.', style: Theme.of(context).textTheme.bodyMedium))
          : _buildItemList(items), // 상품 목록 빌드 함수 호출
      floatingActionButton: AppFloatingActionButton(
        icon: Icons.add,
        onChanged: () {
          context.pushNamed(RouteNames.itemAdd);
        },
      ),
    );
  }

  /// 상품 목록을 표시하는 위젯
  /// 상품을 2개씩 묶어서 표시하며, 각 상품은 ItemListCard 위젯으로 표시됩니다.
  ListView _buildItemList(List<Item> items) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
      itemCount: (items.length / 2).ceil(),
      itemBuilder: (context, index) {
        final first = items[index * 2];
        final second = index * 2 + 1 < items.length ? items[index * 2 + 1] : null;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 첫 번째 아이템 카드
            Expanded(child: ItemListCard(item: first)),
            const SizedBox(width: 10),
            // 두 번째 아이템 카드가 있을 경우 표시
            // 없을 경우 Spacer 위젯으로 공간을 채움
            if (second != null) Expanded(child: ItemListCard(item: second)) else const Spacer(),
          ],
        );
      },
      // 아이템 사이의 간격
      separatorBuilder: (_, __) => const SizedBox(height: 20),
    );
  }
}
