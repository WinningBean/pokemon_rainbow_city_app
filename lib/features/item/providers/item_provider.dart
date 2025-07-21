import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

/// 상품 목록
final itemListProvider = Provider<List<Item>>((ref) => dummyItems);

/// 상품 데이터
final itemByIdProvider = Provider.autoDispose.family<Item?, int>((ref, id) {
  try {
    return dummyItems.firstWhere((item) => item.id == id);
  } catch (_) {
    return null;
  }
});
