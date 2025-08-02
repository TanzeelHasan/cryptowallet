import 'package:flutter/material.dart';
import 'package:walletui/constants/assets.dart';

import '../../../constants/styles.dart';
import '../../../utils/screen_util.dart';

class ServiceGridWidget extends StatelessWidget {
  final List<Map<String, String>> services = const [
    {'icon': AppAssets.scan, 'label': 'Scan'},
    {'icon': AppAssets.cashout, 'label': 'Cashout'},
    {'icon': AppAssets.loan, 'label': 'Bitcoin Loan'},
    {'icon': AppAssets.topup, 'label': 'Top Up'},
    {'icon': AppAssets.bill, 'label': 'Pay Bills'},
    {'icon': AppAssets.more, 'label': 'More'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: AppScreenUtil.w(6),
        mainAxisSpacing: AppScreenUtil.h(6),
        childAspectRatio: 1.0,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final item = services[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset(item['icon']!, width: AppScreenUtil.w(101)),
            ),
            SizedBox(height: AppScreenUtil.h(1)),
            // Text(item['label']!, style: AppStyles.serviceLabel),
          ],
        );
      },
    );
  }
}