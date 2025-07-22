import 'package:flutter/material.dart';

/// AppFilledButton 위젯
/// 사용자가 클릭할 수 있는 버튼 제공
/// FilledButton을 사용하여 기본 스타일의 버튼 구현
class AppFilledButton extends StatelessWidget {
  final String text;
  final double height;
  final void Function() onChanged;

  const AppFilledButton({super.key, required this.text, this.height = 54, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: FilledButton(onPressed: onChanged, child: Text(text)),
    );
  }
}
