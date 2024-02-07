import 'package:bigmart/utils/common/goblebutton.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/PaymentScreen/order_screen.dart';
import 'package:bigmart/view/PaymentScreen/payupiscreen.dart';
import 'package:bigmart/view/TabBarScreen/orderscreen.dart';
import 'package:bigmart/view/TabBarScreen/walletscreen.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class Walletname {
  String image;
  String title;
  String subtitle;

  Walletname({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<Walletname> walletdata = [
  Walletname(
      image: 'assets/image/image-removebg-preview - 2023-12-21T191616 1.png',
      title: 'Paytm',
      subtitle: 'LINK'),
  Walletname(
    image: 'assets/image/image-removebg-preview - 2023-12-21T191816 1.png',
    title: 'Mobikwik',
    subtitle: 'LINK',
  ),
  Walletname(
    image: 'assets/image/image-removebg-preview - 2023-12-21T191719 1.png',
    title: 'Paytm',
    subtitle: 'LINK',
  ),
  Walletname(
      image: 'assets/image/image-removebg-preview - 2023-12-21T191816 1.png',
      title: 'Mobikwik',
      subtitle: 'LINK'),
  Walletname(
      image: 'assets/image/image-removebg-preview - 2023-12-21T192242 1.png',
      title: 'Mobikwik',
      subtitle: 'LINK'),
  Walletname(
      image: 'assets/image/image-removebg-preview - 2023-12-21T192015 1.png',
      title: 'Paytm',
      subtitle: 'LINK'),
];

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
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

            GridView.builder(
                shrinkWrap: true,
                itemCount: walletdata.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 11,
                    mainAxisExtent: 154),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Appcolor.shopscreen)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Appcolor.shopscreen,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(walletdata[index].image),
                                  ),
                                ),
                              ),
                              GobleText(
                                text: walletdata[index].title,
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: '',
                                  fontSize: 14,
                                ),
                              ),
                              GobleText(
                                text: walletdata[index].subtitle,
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: '',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),

            GobleButton(height: 48,
                width: double.infinity,
             voidcallback: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OrderSCreen(),), (route) => false);
    },
                text: 'Pay Now',
            ),
                SizedBox(
                height: height * 0.10,
                )
          ],
        )
    )
    );
  }
}
