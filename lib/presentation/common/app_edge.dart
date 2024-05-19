import 'package:flutter/material.dart';

class AppEdge extends EdgeInsets {
  const AppEdge.vertical4() : super.symmetric(vertical: 4.0);

  const AppEdge.vertical6() : super.symmetric(vertical: 6.0);

  const AppEdge.vertical8() : super.symmetric(vertical: 8.0);

  const AppEdge.vertical10() : super.symmetric(vertical: 10.0);

  const AppEdge.vertical12() : super.symmetric(vertical: 12.0);

  const AppEdge.vertical16() : super.symmetric(vertical: 16.0);

  const AppEdge.horizontal4() : super.symmetric(horizontal: 4.0);

  const AppEdge.horizontal6() : super.symmetric(horizontal: 6.0);

  const AppEdge.horizontal8() : super.symmetric(horizontal: 8.0);

  const AppEdge.horizontal10() : super.symmetric(horizontal: 10.0);

  const AppEdge.horizontal12() : super.symmetric(horizontal: 12.0);

  const AppEdge.horizontal14() : super.symmetric(horizontal: 14.0);

  const AppEdge.horizontal16() : super.symmetric(horizontal: 16.0);

  const AppEdge.horizontal24() : super.symmetric(horizontal: 24.0);

  const AppEdge.all4() : super.all(4.0);

  const AppEdge.all6() : super.all(8.0);

  const AppEdge.all8() : super.all(8.0);

  const AppEdge.all10() : super.all(10.0);

  const AppEdge.all12() : super.all(12.0);

  const AppEdge.all14() : super.all(14.0);

  const AppEdge.all16() : super.all(16.0);

  const AppEdge.all24() : super.all(24.0);

  const AppEdge.custom({
    super.left,
    super.top,
    super.right,
    super.bottom,
  }) : super.only();
}
