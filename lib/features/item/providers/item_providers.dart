import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';

final itemListProvider = Provider<List<Item>>((ref) => dummyItems);

final itemByIdProvider = Provider.family<Item?, int>((ref, id) {
  try {
    return dummyItems.firstWhere((item) => item.id == id);
  } catch (_) {
    return null;
  }
});
