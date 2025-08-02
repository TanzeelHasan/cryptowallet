import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreenUtil {
  static void init(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812), // iPhone 13 mini
      minTextAdapt: true,
    );
  }

  static double h(double value) => value.h;
  static double w(double value) => value.w;
  static double sp(double value) => value.sp;
}