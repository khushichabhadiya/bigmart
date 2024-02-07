import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class Order {
  String image;
  String image1;
  String name;
  String subname;
  String subname1;
  String view;
  String detail;
  var color;

  Order({
    required this.name,
    required this.subname,
    required this.image,
    required this.image1,
    required this.subname1,
    required this.view,
    required this.detail,
    required this. color,
  });
}

List<Order> Orderdeta = [
  Order(
    name: "Delivered",
    subname1: '0RD0432547891',
    view: "930",
    subname: 'Placed on wed, 19 Oct 30, 12:55 pm',
    image: 'assets/image/shopping-bag (1) 1.png',
    detail: "View Details",
    image1: 'assets/image/view (1) 3.png',
  color: Appcolor.primerycolor,
  ),
  Order(
    name: "Delivered",
    subname1: '0RD0432525486',
    view: "580",
    detail: "View Details",
    subname: 'Placed on wed, 22 Oct 27, 01:55 pm',
    image: 'assets/image/shopping-bag (1) 1.png',
    image1: 'assets/image/view (1) 3.png',
    color: Appcolor.primerycolor,

  ),
  Order(
    name: "Cancelled",
    subname1: '0RD0432556247',
    view: "1080",
    detail: "View Details",
    subname: 'Placed on wed, 22 Oct 27, 01:55 pm',
    image: 'assets/image/shopping-bag (1) 1.png',
    image1: 'assets/image/view (1) 3.png',
    color: Appcolor.orderscreen,
  ),
];

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'My Order',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: '',
                    fontWeight: FontWeight.w500,
                    color: Appcolor.Greycolor,
                  ),
                )
              ],
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
                            border: Border.all(color: Appcolor.shopscreen)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Orderdeta[index].image,
                                    scale: 3,
                                    color: Appcolor.primerycolor,
                                  ),
                                  SizedBox(
                                    width: width * 0.016,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 50,
                                        decoration: BoxDecoration(
                                        color: Appcolor.orederConatiner,
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: GobleText(
                                          text: Orderdeta[index].name,
                                          fontsize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Appcolor.orderscreen,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.009,
                                      ),
                                      Row(
                                        children: [
                                          GobleText(
                                            text: Orderdeta[index].subname1,
                                            color: Appcolor.Greycolor,
                                            fontWeight: FontWeight.w600,
                                            fontsize: 14,
                                          ),
                                          SizedBox(
                                            width: width * 0.007,
                                          ),
                                          Container(
                                            height: 8,
                                            width: 8,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: width * 0.005,
                                          ),
                                          GobleText(
                                              text: Orderdeta[index].view,
                                              fontsize: 14,
                                              color: Colors.deepPurpleAccent
                                          ),
                                          SizedBox(
                                            width: width * 0.15,
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                Orderdeta[index].image1,
                                                scale: 3,
                                              ),
                                              GobleText(
                                                text: Orderdeta[index].detail,
                                                color: Appcolor.primerycolor,
                                                fontsize: 8,
                                                fontWeight: FontWeight.w500,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          GobleText(
                                            text: Orderdeta[index].subname,
                                            color: Appcolor.Greycolor,
                                            fontsize: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  );
                })
          ],
        ),
      ),
    );
  }
}
