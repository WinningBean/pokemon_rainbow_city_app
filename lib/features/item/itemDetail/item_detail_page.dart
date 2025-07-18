import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class ItemDetailPage extends StatelessWidget {
  final int itemId;

  const ItemDetailPage({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: BaseAppBar(actions: [Icon(CustomIcons.truck)]),
      body: Center(child: Text('ItemDetailPage: $itemId')),
    );
  }
}
