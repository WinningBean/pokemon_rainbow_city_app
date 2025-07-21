import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quantityProvider = StateProvider<int>((ref) => 1);

final totalPriceProvider = Provider.autoDispose.family<double, Item>((ref, item) {
  final quantity = ref.watch(quantityProvider);
  return item.price * quantity;
});
