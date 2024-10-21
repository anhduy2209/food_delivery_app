import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screen/order_screen.dart';
import 'package:food_delivery/screen/profile_screen.dart';
import 'package:food_delivery/screen/wallet.dart';

import 'home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> screens;
  late Widget currentScreen;
  late HomeScreen homeScreen;
  late OrderScreen orderScreen;
  late ProfileScreen profileScreen;
  late WalletScreen walletScreen;

  @override
  void initState() {
    homeScreen = const HomeScreen();
    orderScreen = const OrderScreen();
    profileScreen = const ProfileScreen();
    walletScreen = const WalletScreen();
    screens = [homeScreen, orderScreen, profileScreen, walletScreen];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        backgroundColor: Colors.white,
        animationDuration: const Duration(microseconds: 500),
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        color: Colors.black,
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: screens[currentTabIndex],
    );
  }
}
