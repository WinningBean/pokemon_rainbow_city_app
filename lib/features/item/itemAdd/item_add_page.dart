import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class ItemAddlPage extends StatelessWidget {
  const ItemAddlPage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(local.appTitle)),
      body: Center(child: Text('ItemAddlPage')),
    );
  }
}
