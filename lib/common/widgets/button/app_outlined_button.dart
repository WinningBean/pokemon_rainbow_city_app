import 'package:flutter/material.dart';

/// AppOutlinedButton 위젯
/// 사용자가 클릭할 수 있는 버튼 제공
/// OutlinedButton을 사용하여 기본 스타일의 버튼 구현
class AppOutlinedButton extends StatelessWidget {
  final String text;
  final double height;
  final void Function() onChanged;

  const AppOutlinedButton({
    super.key,
    required this.text,
    this.height = 54,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: OutlinedButton(onPressed: onChanged, child: Text(text)),
    );
  }
}
