import 'package:flutter/material.dart';
import 'package:walletui/utils/screen_util.dart';

class AppStyles {
  static TextStyle title = TextStyle(
    fontSize: AppScreenUtil.sp(18),
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: AppScreenUtil.sp(14),
    color: Colors.white70,
  );

  static TextStyle balanceLabel = TextStyle(
    fontSize: AppScreenUtil.sp(16),
    color: Colors.grey[600],
  );

  static TextStyle balanceAmount = TextStyle(
    fontSize: AppScreenUtil.sp(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle balanceCurrency = TextStyle(
    fontSize: AppScreenUtil.sp(16),
    color: Colors.grey,
  );

  static TextStyle tabLabel = TextStyle(
    fontSize: AppScreenUtil.sp(14),
    fontWeight: FontWeight.w500,
    color: Colors.grey[700],
  );

  static TextStyle serviceLabel = TextStyle(
    fontSize: AppScreenUtil.sp(12),
    color: Colors.grey[700],
  );
}