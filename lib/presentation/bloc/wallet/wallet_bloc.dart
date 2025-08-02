import 'package:bloc/bloc.dart';
import 'package:walletui/data/models/wallet_model.dart';
import 'package:walletui/domain/entities/wallet.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(WalletInitial()) {
    on<LoadWalletEvent>((event, emit) {
      // Simulate loading wallet data (could be from API or local storage)
      final wallet = WalletModel(balance: "\$2,846.50", currency: "USD");
      emit(WalletLoaded(wallet));
    });
  }
}