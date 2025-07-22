import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/features/item/providers/item_provider.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class ItemListPage extends ConsumerWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = AppLocalizations.of(context)!;
    final items = ref.watch(itemListProvider);

    return Scaffold(
      appBar: BaseAppBar(title: local.appTitle),
      body: ListView(children: items.map((item) => Text(item.name)).toList()),
    );
  }
}
