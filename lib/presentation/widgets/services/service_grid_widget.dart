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
        crossAxisSpacing: AppScreenUtil.w(16),
        mainAxisSpacing: AppScreenUtil.h(16),
        childAspectRatio: 1.0,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final item = services[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(AppScreenUtil.w(12)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
              ),
              child: Image.asset(item['icon']!, width: AppScreenUtil.w(24)),
            ),
            SizedBox(height: AppScreenUtil.h(8)),
            Text(item['label']!, style: AppStyles.serviceLabel),
          ],
        );
      },
    );
  }
}