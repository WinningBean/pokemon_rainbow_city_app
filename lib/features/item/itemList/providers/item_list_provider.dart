import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/dummy_items.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 목록 StateNotifierProvider로 변경
final itemListProvider = StateNotifierProvider<ItemListNotifier, List<Item>>((ref) {
  return ItemListNotifier();
});

class ItemListNotifier extends StateNotifier<List<Item>> {
  ItemListNotifier() : super([...dummyItems]..sort((a, b) => b.id.compareTo(a.id)));

  void addItem(Item item) {
    final updated = [...state, item]..sort((a, b) => b.id.compareTo(a.id));
    state = updated;
  }
}

/// 검색 상태를 관리하는 프로바이더
/// 기본값은 false로 설정되어 있습니다.
final isSearchingProvider = StateProvider<bool>((ref) => false);
