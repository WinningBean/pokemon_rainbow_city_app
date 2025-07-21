import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/counter_button.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterButton(icon: CustomIcons.minus, onChanged: () {}),
        SizedBox(
          width: 72,
          child: Text(
            '1',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        CounterButton(icon: CustomIcons.plus, onChanged: () {}),
      ],
    );
  }
}
