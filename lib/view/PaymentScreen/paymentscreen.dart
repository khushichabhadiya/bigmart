import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/view/PaymentScreen/cardsscreen.dart';
import 'package:bigmart/view/PaymentScreen/cashscreen.dart';
import 'package:bigmart/view/PaymentScreen/netbanlingscreen.dart';
import 'package:bigmart/view/PaymentScreen/payupiscreen.dart';
import 'package:bigmart/view/PaymentScreen/walletscreen.dart';
import 'package:flutter/material.dart';

import '../../utils/common/gobletext.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> with TickerProviderStateMixin {
  int selectindex = 0;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  void _onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
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
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    GobleText(
                      text: 'Select Payment Method',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontsize: 16,
                    ),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Appcolor.Contaircolor,
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(
                        Icons.shopping_cart_outlined,
                        size: 29,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      height: 38,
                      width: 38,
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
            height: height * 0.02,
          ),
          Container(
            height: 80,
            child: TabBar(
              indicatorColor: Appcolor.shopscreen,
              controller: _tabController,
              labelColor: Appcolor.primerycolor,
              unselectedLabelColor: Appcolor.Greycolor,
              labelStyle: const TextStyle(fontSize: 11),
              tabs: [
                Column(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectindex == 0
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                         'assets/image/wallet (2) 2.png',
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
                      'Wallets',
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
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectindex == 1
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/credit-cards (2) 1.png',

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
                      'Cards',
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
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectindex == 2
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/Vector.png',
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
                      'Netbanking',
                      style: TextStyle(
                          color: selectindex == 2
                              ? Appcolor.primerycolor
                              : Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectindex == 3
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/google-glass-logo (2) 1.png',
                        scale: 3,
                        color: selectindex == 3
                            ? Colors.white
                            : Appcolor.primerycolor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Pay via  UPI',
                      style: TextStyle(
                          color: selectindex == 3
                              ? Appcolor.primerycolor
                              : Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: selectindex == 4
                            ? Appcolor.primerycolor
                            : Appcolor.profileScreen,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/image/money (2) 1.png',
                        scale: 3,
                        color: selectindex == 4
                            ? Colors.white
                            : Appcolor.primerycolor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Cash',
                      style: TextStyle(
                          color: selectindex == 4
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
                WalletScreen(),
                CardScreen(),
                NetBankingScreen(),
                PayUpiscreen(),
                CashSCreen(),


              ],
            ),
          )
        ],
      ),
    );
  }
}
