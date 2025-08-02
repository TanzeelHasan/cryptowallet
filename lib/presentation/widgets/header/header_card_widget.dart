import 'package:flutter/material.dart';
import 'package:walletui/constants/assets.dart';

import '../../../constants/styles.dart';
import '../../../utils/screen_util.dart';

class HeaderCardWidget extends StatelessWidget {
  const HeaderCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppScreenUtil.h(120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppScreenUtil.w(12)),
        image: const DecorationImage(
          image: AssetImage(AppAssets.banner),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [

          Padding(
            padding: EdgeInsets.all(AppScreenUtil.w(12)),
            child: CircleAvatar(
              radius: AppScreenUtil.w(30),
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Icon(Icons.person, size: AppScreenUtil.w(30), color: Colors.white),
            ),
          ),
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text("Welcome back,", style: AppStyles.title),
          //       Text("John Doe", style: AppStyles.subtitle),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}