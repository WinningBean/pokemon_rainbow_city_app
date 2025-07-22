import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/appBar/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/appBar/search_base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_floating_action_button.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/core/navigation/route_names.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/providers/item_list_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/features/item/providers/item_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/widgets/item_list_card.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// 상품 목록 페이지
/// 상품 목록을 표시하며, 상품 추가 버튼이 포함되어 있습니다.
class ItemListPage extends ConsumerStatefulWidget {
  const ItemListPage({super.key});

  @override
  ConsumerState<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends ConsumerState<ItemListPage> {
  String _searchKeyword = '';

  // 필터링된 상품 목록을 반환합니다.
  List<Item> get _filteredItems {
    if (_searchKeyword.trim().isEmpty) return ref.watch(itemListProvider);
    return ref
        .watch(itemListProvider)
        .where((item) => item.name.toLowerCase().contains(_searchKeyword.toLowerCase()))
        .toList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // extra 기반으로 검색 키워드 초기화
    final extra = GoRouterState.of(context).extra;
    if (extra is String && extra.isNotEmpty) {
      setState(() {
        _searchKeyword = extra;
      });
    }

    // 검색 상태 초기화: 페이지가 활성화될 때마다 검색 상태를 false로 설정합니다.
    final route = ModalRoute.of(context);
    if (route?.isCurrent ?? false) {
      Future.microtask(() {
        if (mounted) {
          ref.read(isSearchingProvider.notifier).state = false;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final isSearching = ref.watch(isSearchingProvider);

    return Scaffold(
      appBar: isSearching
          ? SearchBaseAppBar(
              automaticallyImplyLeading: false,
              contentPadding: 12,
              outerPadding: const EdgeInsets.symmetric(horizontal: 4),
              actions: [const Icon(CustomIcons.cart)],
              onTapOutside: _exitSearchMode,
              onSearch: _handleSearch,
            )
          : BaseAppBar(
              automaticallyImplyLeading: _searchKeyword.isNotEmpty,
              actions: [
                IconButton(
                  icon: const Icon(CustomIcons.search),
                  onPressed: () {
                    ref.read(isSearchingProvider.notifier).state = true;
                  },
                ),
                const SizedBox(width: 24),
                const Icon(CustomIcons.cart),
              ],
            ),
      // 상품 목록이 비어있을 경우 안내 메시지 표시
      // 상품이 있을 경우 상품 목록을 표시합니다.
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _exitSearchMode,
        child: _filteredItems.isEmpty
            ? Center(
                child: Text(local.itemListEmptyText, style: Theme.of(context).textTheme.bodyMedium),
              )
            : _buildItemList(_filteredItems),
      ),
      floatingActionButton: AppFloatingActionButton(
        icon: Icons.add,
        onChanged: () {
          context.pushNamed(RouteNames.itemAdd);
        },
      ),
    );
  }

  /// 검색 모드를 종료합니다.
  /// 검색 상태를 false로 설정하여 검색 UI를 숨깁니다.
  /// 검색 모드를 종료하면 상품 목록을 다시 표시합니다.
  void _exitSearchMode() {
    ref.read(isSearchingProvider.notifier).state = false;
  }

  /// 검색어를 처리합니다.
  /// 검색어가 비어있지 않은 경우, 해당 검색어로 상품 목록을 필터링하고 검색 모드를 종료합니다.
  void _handleSearch(String keyword) {
    if (keyword.trim().isEmpty) return;
    context.pushNamed(RouteNames.itemList, extra: keyword);
    _exitSearchMode();
  }

  /// 상품 목록을 표시하는 위젯
  /// 상품을 2개씩 묶어서 표시하며, 각 상품은 ItemListCard 위젯으로 표시됩니다.
  ListView _buildItemList(List<Item> items) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
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
