import 'package:bigmart/view/PaymentScreen/paymentscreen.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/apptext.dart';
import '../../utils/common/gobletext.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class Cart {
  String image;
  String name;
  String subname;
  double price;

  Cart(
      {required this.name,
      required this.subname,
      required this.image,
      required this.price});
}

List<Cart> cartdata = [
  Cart(
    name: "Chocolate",
    subname: 'Bittersweet Chocolate',
    image: 'assets/image/image-removebg-preview (84) 1.png',
    price: 120,
  ),
  Cart(
    name: "Egg",
    subname: 'Egg box',
    image: 'assets/image/image-removebg-preview (85) 1.png',
    price: 80,
  ),
  Cart(
    name: "Butter",
    subname: 'Vegetable oil butter',
    image: 'assets/image/image-removebg-preview (86) 1.png',
    price: 120,
  ),
  Cart(
    name: "Drinks",
    subname: 'Kanguru energy drink',
    image: 'assets/image/image-removebg-preview (91) 2.png',
    price: 80,
  ),
  Cart(
    name: "Kraft",
    subname: 'Thousand island drink drink drink',
    image: 'assets/image/image-removebg-preview (87) 2.png',
    price: 80,
  ),
];

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Appcolor.navigation1, Appcolor.navigation2],
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
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: width * 0.07,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GobleText(
                            text: AppText.cartscreen,
                            fontsize: 14,
                          ),
                          Text(
                            '3 items',
                            style: TextStyle(color: Appcolor.Homecolor1),
                          ),
                        ],
                      ),
                      Spacer(),
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
                        child: const Icon(Icons.menu,
                            size: 29, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.010,
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: cartdata.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 105,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Appcolor.shopscreen)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 90,
                                      child: Image.asset(
                                        cartdata[index].image,
                                        scale: 2,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GobleText(
                                          text: cartdata[index].name,
                                          color: Appcolor.cartscreen,
                                          fontsize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        GobleText(
                                          text: cartdata[index].subname,
                                          color: Appcolor.Greycolor,
                                          textStyle: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        GobleText(
                                          text: '₹ ${cartdata[index].price}',
                                          color: Appcolor.Greycolor,
                                          fontWeight: FontWeight.w500,
                                          fontsize: 14,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ));
              },
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) =>PaymentScreen()));
              },
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Appcolor.primerycolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '3  Items',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: '',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        '750',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: '',
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: width * 0.3,
                      ),
                      Text(
                        'Proceed To Pay',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: '',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                         Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
