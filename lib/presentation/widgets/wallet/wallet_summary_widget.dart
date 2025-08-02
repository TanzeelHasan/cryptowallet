import 'package:flutter/material.dart';
import 'package:walletui/constants/strings.dart';
import 'package:walletui/domain/entities/wallet.dart';

import '../../../constants/assets.dart';
import '../../../constants/styles.dart';
import '../../../utils/screen_util.dart';

class WalletSummaryWidget extends StatelessWidget {
  final Wallet wallet;

  const WalletSummaryWidget({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.walletBalance, style: AppStyles.balanceLabel),
        SizedBox(height: AppScreenUtil.h(4)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(wallet.balance, style: AppStyles.balanceAmount),
            SizedBox(width: AppScreenUtil.w(4)),
            Text(wallet.currency, style: AppStyles.balanceCurrency),
            Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AppAssets.history,
                    width: AppScreenUtil.w(24),
                    height: AppScreenUtil.h(24),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AppAssets.globe,
                    width: AppScreenUtil.w(24),
                    height: AppScreenUtil.h(24),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    AppAssets.user,
                    width: AppScreenUtil.w(32),
                    height: AppScreenUtil.h(32),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}