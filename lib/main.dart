import 'package:flutter/material.dart';
import 'package:walletui/presentation/screens/wallet_dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BePay Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(color: Colors.white, foregroundColor: Colors.black),
      ),
      home: const WalletDashboardScreen(),
    );
  }
}