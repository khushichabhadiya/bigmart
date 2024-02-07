import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/view/Auth/screen5.dart';
import 'package:bigmart/view/NavigationScreen/homescreen.dart';
import 'package:bigmart/view/NavigationScreen/profilescreen.dart';
import 'package:bigmart/view/NavigationScreen/shopscreen.dart';
import 'package:flutter/material.dart';

import 'NavigationScreen/cartscreen.dart';
import 'NavigationScreen/storescreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Screen4(),
    StoreScreen(),
    CartScreen(),
    ProfileScreen(),
  ];


  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/image/homepage (5) 1.png',
              height: 24,
              width: 24,
                color: selectedIndex == 0
                    ? Appcolor.primerycolor
                    : Appcolor.Greycolor
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/image/shop 1.png',
              height: 24,
              width: 24,
                color: selectedIndex == 1
                    ? Appcolor.primerycolor
                    : Appcolor.Greycolor
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/image/pin 1.png',
              height: 24,
              width: 24,
                color: selectedIndex == 2
                    ? Appcolor.primerycolor
                    : Appcolor.Greycolor
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/image/shopping-basket 1.png',
              height: 24,
              width: 24,
                color: selectedIndex == 3
                    ? Appcolor.primerycolor
                    : Appcolor.Greycolor
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/user (6) 1.png',
                height: 24,
                width: 24,
                color: selectedIndex == 4
                    ? Appcolor.primerycolor
                    : Appcolor.Greycolor),
            label: 'profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Appcolor.primerycolor,
        onTap: onItemTapped,
        showUnselectedLabels: true,
        unselectedItemColor: Appcolor.Greycolor,
      ),
    );
  }
}

