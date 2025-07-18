import 'package:flutter/material.dart';

/// 세로 위젯 간격 빌드
List<Widget> buildColumnSpaced({
  required double space,
  required List<Widget> children,
}) => [
  for (int i = 0; i < children.length; i++) ...[
    if (i != 0) SizedBox(height: space),
    children[i],
  ],
];

/// 가로 위젯 간격 빌드
List<Widget> buildRowSpaced({
  required double space,
  required List<Widget> children,
}) => [
  for (int i = 0; i < children.length; i++) ...[
    if (i != 0) SizedBox(width: space),
    children[i],
  ],
];
