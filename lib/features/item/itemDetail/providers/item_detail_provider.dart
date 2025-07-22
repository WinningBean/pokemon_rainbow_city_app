import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 현재 선택된 수량을 관리하는 프로바이더
/// 기본값은 1로 설정되어 있습니다.
final quantityProvider = StateProvider<int>((ref) => 1);

/// 총 가격을 계산하는 프로바이더
/// 상품의 가격과 현재 선택된 수량을 곱하여 계산합니다.
final totalPriceProvider = Provider.autoDispose.family<double, Item>((ref, item) {
  final quantity = ref.watch(quantityProvider);
  return item.price * quantity;
});
