import 'package:flutter/material.dart';

/// AppFloatingActionButton 위젯
/// 사용자가 클릭할 수 있는 버튼 제공
/// FilledButton을 사용하여 기본 스타일의 버튼 구현
class AppFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double size;
  final void Function() onChanged;

  const AppFloatingActionButton({
    super.key,
    required this.icon,
    this.iconSize = 40,
    this.size = 64,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: FloatingActionButton(
        onPressed: onChanged,
        child: Icon(icon, size: iconSize),
      ),
    );
  }
}
