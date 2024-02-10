import 'package:bigmart/view/Auth/screen5.dart';
import 'package:bigmart/view/TabBarScreen/logoutscreen.dart';
import 'package:bigmart/view/TabBarScreen/orderscreen.dart';
import 'package:bigmart/view/TabBarScreen/walletscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/apptext.dart';
import '../../utils/common/gobletext.dart';
import '../TabBarScreen/addreessscreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  int selectindex = 0;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  static List wideget = [
    addreessScreen(),
    OrderScreen(),
    WalletScreen(),
    LogOutScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }
  void logOut() async {
    await FirebaseAuth.instance.signOut();

    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(context,
        CupertinoPageRoute(builder: (context) => const Screen5()));

  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Appcolor.navigation1,
                  Appcolor.navigation2,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.06,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    GobleText(
                      text: 'Profile',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                    SizedBox(
                      width: width * 0.45,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Appcolor.Contaircolor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 29,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Appcolor.Contaircolor,
                        shape: BoxShape.circle,
                      ),
                      child:
                          const Icon(Icons.menu, size: 29, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            height: 80,
            child: TabBar(
              indicatorColor: Appcolor.shopscreen,
              controller: _tabController,
              labelColor: Appcolor.primerycolor,
              unselectedLabelColor: Appcolor.Greycolor,
              labelStyle: TextStyle(fontSize: 11),
              tabs: [
                Column(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: selectindex == 0
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/address (1) 1.png',
                        scale: 3,
                        color: selectindex == 0
                            ? Colors.white
                            : Appcolor.primerycolor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(
                          color: selectindex == 0
                              ? Appcolor.primerycolor
                              : Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: selectindex == 1
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/menu (10) 2.png',

                        scale: 3,
                        color: selectindex == 1
                            ? Colors.white
                            : Appcolor.primerycolor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'My Order',
                      style: TextStyle(
                          color: selectindex == 1
                              ? Appcolor.primerycolor
                              : Colors.black),
                    )
                  ],
                ),

                Column(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: selectindex == 2
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/wallet (2) 2.png',
                        scale: 3,
                        color: selectindex == 2
                            ? Colors.white
                            : Appcolor.primerycolor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'My Wallet',
                      style: TextStyle(
                          color: selectindex == 2
                              ? Appcolor.primerycolor
                              : Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        logOut();
                      },

                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: selectindex == 3
                              ? Appcolor.primerycolor
                              : Appcolor.profileScreen,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/image/logout (4) 1.png',
                          scale: 3,
                          color: selectindex == 3
                              ? Colors.white
                              : Appcolor.primerycolor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                          color: selectindex == 3
                              ? Appcolor.primerycolor
                              : Colors.black),
                    )
                  ],
                ),
              ],
              onTap: _onItemTapped,
              mouseCursor: MouseCursor.uncontrolled,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                addreessScreen(),
                OrderScreen(),
                WalletScreen(),
                LogOutScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
