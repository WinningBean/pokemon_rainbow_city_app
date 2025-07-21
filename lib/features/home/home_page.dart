import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_filled_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_floating_action_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_outlined_button.dart';
import 'package:pokemon_rainbow_city_app/common/helpers/ui_helpers.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/core/navigation/route_names.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: BaseAppBar(title: local.appTitle),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...buildColumnSpaced(
              space: 20,
              children: [
                Text('HomePage'),
                AppFilledButton(
                  text: 'itemListPage',
                  onChanged: () {
                    context.pushNamed(RouteNames.itemList);
                  },
                ),
                AppOutlinedButton(
                  text: 'itemDetailPage',
                  onChanged: () {
                    context.pushNamed(RouteNames.itemDetail, pathParameters: {'id': '4'});
                  },
                ),
                AppFloatingActionButton(
                  icon: CustomIcons.plus,
                  onChanged: () {
                    context.pushNamed(RouteNames.itemAdd);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
