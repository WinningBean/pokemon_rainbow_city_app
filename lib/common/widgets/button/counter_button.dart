import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final double size;
  final IconData icon;
  final double iconSize;
  final void Function() onChanged;

  const CounterButton({
    super.key,
    this.size = 32,
    required this.icon,
    this.iconSize = 24,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: OutlinedButton(
        onPressed: onChanged,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Theme.of(context).colorScheme.primaryContainer, width: 1),
          padding: EdgeInsets.all(4.0),
        ),
        child: Icon(icon, size: iconSize),
      ),
    );
  }
}
