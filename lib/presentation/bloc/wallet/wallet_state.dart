part of 'wallet_bloc.dart';

abstract class WalletState {
  const WalletState();

}

class WalletInitial extends WalletState {}

class WalletLoaded extends WalletState {
  final Wallet wallet;

  WalletLoaded(this.wallet);

}