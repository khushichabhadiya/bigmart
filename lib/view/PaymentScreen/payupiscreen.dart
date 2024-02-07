import 'package:bigmart/utils/common/goblebutton.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/PaymentScreen/order_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';

class PayUpiscreen extends StatefulWidget {
  const PayUpiscreen({super.key});

  @override
  State<PayUpiscreen> createState() => _PayUpiscreenState();
}

class PayUI {
  String image;
  String title;

  PayUI({
    required this.image,
    required this.title,
  });
}

List<PayUI> payui = [
  PayUI(
    image: 'assets/image/image-removebg-preview - 2023-12-21T191616 1 (1).png',
    title: 'mrmohan7854@okaxis',
  ),
  PayUI(
    image: 'assets/image/image-removebg-preview - 2023-12-21T191816 1 (1).png',
    title: 'namebank@okpay',
  ),
  PayUI(
    image: 'assets/image/image-removebg-preview - 2023-12-21T191719 1 (3).png',
    title: 'mrsiva4785@okaxis',
  ),
  PayUI(
    image: 'assets/image/image-removebg-preview - 2023-12-21T191855 1 (3).png',
    title: 'namebank@okpay',
  ),
];

class _PayUpiscreenState extends State<PayUpiscreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Pay via UPI',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: '',
                      fontSize: 24,
                      color: Appcolor.Greycolor,
                    ),
                  )
                ],
              ),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Container(
                        height: 96,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolor.shopscreen),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
          
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Appcolor.shopscreen),
                                    image: DecorationImage(
                                        image: AssetImage(payui[index].image))),
                              ),
                              SizedBox(
                                height: height * 0.008,
                              ),
                              Row(
                                children: [
                                  GobleText(
                                    text: payui[index].title,
                                    fontWeight: FontWeight.w400,
                                    fontsize: 14,
                                    color: Appcolor.Greycolor,
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },),
              SizedBox(
                height: height * 0.03,
              ),
              GobleButton(
                height: 48,
                width: double.infinity,
                voidcallback: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OrderSCreen(),), (route) => false);
                },
                text: 'Pay Now',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
