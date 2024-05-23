import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class UITextStyles {
  UITextStyles._();
  static TextStyle thin(double size) => TextStyle(
        fontWeight: FontWeight.w300,
        color: UIColors.defaultText,
        fontSize: size.sp,
      );


  static TextStyle regular(double size) => TextStyle(
        fontWeight: FontWeight.w400,
        color: UIColors.defaultText,
        fontSize: size.sp,
      );

  static TextStyle semi(double size) => TextStyle(
    fontWeight: FontWeight.w500,
    color: UIColors.defaultText,
    fontSize: size.sp,
  );


  static TextStyle medium(double size) => TextStyle(
        fontWeight: FontWeight.w600,
        color: UIColors.defaultText,
        fontSize: size.sp,
      );

  static TextStyle bold(double size) => TextStyle(
        fontWeight: FontWeight.w700,
        color: UIColors.defaultText,
        fontSize: size.sp,
      );

  static TextStyle extraBold(double size) => TextStyle(
        fontWeight: FontWeight.w900,
        color: UIColors.defaultText,
        fontSize: size.sp,
      );
}
