import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/colors.dart';

class AppShadow extends BoxShadow {
  AppShadow()
      : super(
          offset: const Offset(0, 4),
          blurRadius: 20,
          spreadRadius: 0,
          color: UIColors.blurBackground.withOpacity(0.1),
        );
}
