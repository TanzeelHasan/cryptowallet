import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walletui/presentation/bloc/wallet/wallet_bloc.dart';
import 'package:walletui/presentation/widgets/header/header_card_widget.dart';
import 'package:walletui/presentation/widgets/wallet/wallet_summary_widget.dart';
import 'package:walletui/presentation/widgets/wallet/action_button_widget.dart';
import 'package:walletui/presentation/widgets/tabs/tab_section_widget.dart';
import 'package:walletui/presentation/widgets/services/service_grid_widget.dart';
import 'package:walletui/presentation/widgets/navigation/bottom_nav_widget.dart';
import 'package:walletui/utils/screen_util.dart';

import '../../constants/assets.dart';
import '../../domain/entities/wallet.dart';

class WalletDashboardScreen extends StatelessWidget {
  const WalletDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppScreenUtil.init(context);

    return BlocProvider(
      create: (context) => WalletBloc()..add(LoadWalletEvent()),
      child: Scaffold(
        body: BlocBuilder<WalletBloc, WalletState>(
          builder: (context, state) {
            if (state is WalletInitial) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is WalletLoaded) {
              return _buildBody(context, state.wallet);
            }

            return const Center(child: Text("Unexpected state"));
          },
        ),
        bottomNavigationBar: const BottomNavWidget(),
      ),
    );
  }

  Widget _buildBody(BuildContext context, Wallet wallet) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppScreenUtil.w(16),
        vertical: AppScreenUtil.h(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderCardWidget(),
          SizedBox(height: AppScreenUtil.h(16)),
          WalletSummaryWidget(wallet: wallet),
          SizedBox(height: AppScreenUtil.h(16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ActionButtonWidget(icon: AppAssets.receive, label: "Receive"),
              ActionButtonWidget(icon: AppAssets.send, label: "Send"),
              ActionButtonWidget(icon: AppAssets.swap, label: "Swap"),
              ActionButtonWidget(icon: AppAssets.buy, label: "Buy"),
            ],
          ),
          SizedBox(height: AppScreenUtil.h(24)),
          const TabSectionWidget(),
          SizedBox(height: AppScreenUtil.h(16)),
          ServiceGridWidget(),
        ],
      ),
    );
  }
}