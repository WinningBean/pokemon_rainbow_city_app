import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/dummy_items.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 목록
// final itemListProvider = Provider<List<Item>>((ref) => dummyItems);
final itemListProvider = Provider<List<Item>>((ref) {
  final items = [...dummyItems];
  items.sort((a, b) => b.id.compareTo(a.id));
  return items;
});

/// 검색 상태를 관리하는 프로바이더
/// 기본값은 false로 설정되어 있습니다.
final isSearchingProvider = StateProvider<bool>((ref) => false);
