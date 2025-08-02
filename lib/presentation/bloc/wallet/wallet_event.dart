part of 'wallet_bloc.dart';


abstract class WalletEvent {
  const WalletEvent();
}

class LoadWalletEvent extends WalletEvent {}
