import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/providers/item_list_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 데이터
final itemByIdProvider = Provider.autoDispose.family<Item?, int>((ref, id) {
  final items = ref.watch(itemListProvider);
  try {
    return items.firstWhere((item) => item.id == id);
  } catch (_) {
    return null;
  }
});
