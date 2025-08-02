import 'package:flutter/material.dart';
import '/constants/assets.dart';

import '../../../constants/styles.dart';
import '../../../constants/strings.dart';

import '../../../utils/screen_util.dart';

class HeaderCardWidget extends StatelessWidget {
  const HeaderCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppScreenUtil.h(120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppScreenUtil.w(12)),
        color: Color(0x80F2F2F9),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: AppScreenUtil.w(6)),
          Container(
            height: AppScreenUtil.h(110),
            width: AppScreenUtil.w(110),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppScreenUtil.w(12)),
              image: const DecorationImage(
                image: AssetImage(AppAssets.banner),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: AppScreenUtil.w(20)),
          Text(AppStrings.header, style: AppStyles.header),
        ],
      ),
    );
  }
}
