import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/goblebutton.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/PaymentScreen/order_screen.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.019,
            ),
            GobleText(
                text: AppText.cardscreen,
                textStyle:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Appcolor.shopscreen),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/image/image-removebg-preview - 2023-12-'
                              '21T192242 1 (1).png'),
                          scale: 2)),
                ),
                Container(
                  height: 30,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Appcolor.shopscreen),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/image/image-removebg-preview - 2023-12-21T191719 1 (1).png'),
                          scale: 2)),
                ),
                Container(
                  height: 30,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Appcolor.shopscreen),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/image/image-removebg-preview - 2023-12-21T191855 1 (1).png'),
                          scale: 2)),
                ),
                Container(
                  height: 30,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Appcolor.shopscreen),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/image/image-removebg-preview - 2023-12-21T192015 1 (1).png'),
                          scale: 2)),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Appcolor.shopscreen),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GobleText(text: 'Name on Card',
                    fontWeight: FontWeight.w400,
                      fontsize: 12,
                      color: Appcolor.cartscreen,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    GobleText(text: 'Mastercard',
                    fontsize: 18,
                      fontWeight: FontWeight.w400,
                      color: Appcolor.Greycolor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.009,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Appcolor.shopscreen),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GobleText(text: 'Card Number',
                      fontWeight: FontWeight.w400,
                      fontsize: 12,
                      color: Appcolor.Greycolor,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    GobleText(text: '34582685458',
                      fontsize: 18,
                      fontWeight: FontWeight.w400,
                      color: Appcolor.Greycolor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.009,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Appcolor.shopscreen),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GobleText(text: 'Card Number',
                        fontWeight: FontWeight.w400,
                          fontsize: 12,
                          color: Appcolor.cartscreen,
                        ),
                        SizedBox(
                          height: height * 0.004,
                        ),
                        GobleText(text: 'dd-mm-yyyy',
                          fontWeight: FontWeight.w400,
                          fontsize: 18,
                          color: Appcolor.Greycolor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Container(
                  height: 66,
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolor.shopscreen),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GobleText(text: 'CVV',
                        fontsize: 12,
                          fontWeight: FontWeight.w400,
                          color: Appcolor.cartscreen,
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        GobleText(text: '6548',
                        fontWeight: FontWeight.w400,
                          fontsize: 18,
                          color: Appcolor.Greycolor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.009,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Appcolor.shopscreen),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GobleText(text: 'Nickname for Card',
                      fontWeight: FontWeight.w400,
                      fontsize: 12,
                      color: Appcolor.Greycolor,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    GobleText(text: 'Mohan',
                      fontsize: 18,
                      fontWeight: FontWeight.w400,
                      color: Appcolor.Greycolor,
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            GobleButton(height: 48,
              width: double.infinity,
              voidcallback: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OrderSCreen(),), (route) => false);
              },
              text: 'Pay Now',
            ),
          ],
        ),
      ),
    );
  }
}
