import 'package:flutter/material.dart';
import 'package:walletui/constants/strings.dart';
import 'package:walletui/constants/assets.dart';

import '../../../constants/styles.dart';
import '../../../utils/screen_util.dart';

class TabSectionWidget extends StatefulWidget {
  const TabSectionWidget({Key? key}) : super(key: key);

  @override
  State<TabSectionWidget> createState() => _TabSectionWidgetState();
}

class _TabSectionWidgetState extends State<TabSectionWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = AppStrings.tabLabels;
    final icons = [
      AppAssets.services,
      AppAssets.assets,
      AppAssets.fiat,
      AppAssets.nft,
      AppAssets.airdrop,
    ];

    return SizedBox(
      height: AppScreenUtil.h(40),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (_, __) => SizedBox(width: AppScreenUtil.w(16)),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => setState(() => _selectedIndex = index),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image.asset(
                //   icons[index],
                //   width: AppScreenUtil.w(20),
                //   color: _selectedIndex == index ? Colors.blue : Colors.grey,
                // ),
                SizedBox(width: AppScreenUtil.w(6)),
                Text(
                  tabs[index],
                  style: AppStyles.tabLabel.copyWith(
                    color: _selectedIndex == index ? Colors.black : Colors.grey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}