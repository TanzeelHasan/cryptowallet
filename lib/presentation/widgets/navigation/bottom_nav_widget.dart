import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.currency_bitcoin), label: "Wallet"),
        BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "Scan & Pay"),
        BottomNavigationBarItem(icon: Icon(Icons.language), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Reward"),
      ],
    );
  }
}