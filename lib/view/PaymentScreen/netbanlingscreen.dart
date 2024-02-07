import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/PaymentScreen/order_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/goblebutton.dart';

class NetBankingScreen extends StatefulWidget {
  const NetBankingScreen({super.key});

  @override
  State<NetBankingScreen> createState() => _NetBankingScreenState();
}
class Netbanking {
  String image;
  String title;

  Netbanking({
    required this.image,
    required this.title,

  });
}

    List<Netbanking> netbanking = [
      Netbanking(
            image: 'assets/image/image-removebg-preview - 2023-12-21T191616 1 (1).png',
            title: 'HDFC',
        ),
      Netbanking(
        image: 'assets/image/image-removebg-preview - 2023-12-22T095020 1.png',
        title: 'ICIC',
      ),
      Netbanking(
        image: 'assets/image/image-removebg-preview - 2023-12-21T192015 1 (2).png',
        title: 'AXIS',
      ),
      Netbanking(
        image: 'assets/image/image-removebg-preview - 2023-12-21T192242 1 (2).png',
        title: 'SATE',
      ),
      Netbanking(
        image: 'assets/image/image-removebg-preview - 2023-12-21T191855 1 (2).png',
        title: 'SBI',
      ),
      Netbanking(
        image: 'assets/image/image-removebg-preview - 2023-12-21T191719 1 (1).png',
        title: 'ICIC',
      ),
      ];
class _NetBankingScreenState extends State<NetBankingScreen> {
  int selectedindex = 4;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
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
          Expanded

            (child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 154,
            mainAxisSpacing: 22,
            crossAxisSpacing: 11,
          ),itemCount: netbanking.length, itemBuilder: (BuildContext contex , int index){
              return Container(
                height: 104,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  border:Border.all(color: Appcolor.shopscreen), 
                ),
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
                              border: Border.all(color: Appcolor.shopscreen),
                              image: DecorationImage(image: AssetImage(netbanking[index].image),scale: 3
                              ),
                            ),
                          ),
                          GobleText(text: netbanking[index].title,
                          fontsize: 14,
                            fontWeight: FontWeight.w400,
                            color: Appcolor.Greycolor,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Radio(value: 1, groupValue: selectedindex, onChanged: (value){
                          setState(() {
                            selectedindex = value!;
                          });
                        }),
                        Icon(Icons.arrow_forward)
                      ],
                    )
                  ],
                ),
              );
          },
          ),
          ),
          GobleButton(height: 48,
            width: double.infinity,
            voidcallback: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OrderSCreen(),), (route) => false);
            },
            text: 'Pay Now',
          ),
        ],
      ),
    );
  }
}
