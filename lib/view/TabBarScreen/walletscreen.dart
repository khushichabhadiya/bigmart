import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class wallet {
  String image;
  String name;
  String subname;
  String subname1;
  String view;

  wallet({
    required this.name,
    required this.subname,
    required this.image,
    required this.subname1,
    required this.view,
  });
}

List<wallet> walletdeta = [
  wallet(
    name: "Cashback",
    subname1: 'Transaction ID: 50916228',
    view: "On 23 Oct 18, 03:13 PM",
    subname: '500',
    image: 'assets/image/add 2.png',
  ),
  wallet(
    name: "Purchase",
    subname1: 'Transaction ID: 50916984',
    view: "On 23 Oct 18, 03:13 PM",
    subname: '300',
    image: 'assets/image/minus 1 (1).png',
  ),
  wallet(
    name: "Cashback",
    subname1: 'Transaction ID: 509165488',
    view: "On 13 Oct 16, 01:43 PM",
    subname: '800',
    image: 'assets/image/add 3.png',
  ),
];

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'My Balance',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: '',
                    fontSize: 24,
                    color: Appcolor.Greycolor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.009,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 104,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Appcolor.shopscreen,
                          ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  walletdeta[index].image,
                                  scale: 3,
                                ),
                                SizedBox(
                                  width: width * 0.09,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GobleText(
                                      text: walletdeta[index].name,
                                      color: Appcolor.primerycolor,
                                      fontsize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    GobleText(
                                      text: walletdeta[index].subname1,
                                      color: Appcolor.Greycolor,
                                      fontWeight: FontWeight.w400,
                                      fontsize: 14,
                                    ),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    GobleText(
                                      text: walletdeta[index].view,
                                      color: Appcolor.shopscreen,
                                      fontWeight: FontWeight.w400,
                                      fontsize: 12,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    GobleText(
                                      text: walletdeta[index].subname,
                                      color: Appcolor.primerycolor,
                                      fontsize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
