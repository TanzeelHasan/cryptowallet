import 'package:flutter/material.dart';

import '../../../constants/styles.dart';
import '../../../utils/screen_util.dart';

class ActionButtonWidget extends StatelessWidget {
  final String icon;
  final String label;

  const ActionButtonWidget({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(AppScreenUtil.w(10)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: Image.asset(icon, width: AppScreenUtil.w(83), height: AppScreenUtil.h(83)),
        ),
        SizedBox(height: AppScreenUtil.h(6)),
        // Text(label, style: AppStyles.serviceLabel),
      ],
    );
  }
}