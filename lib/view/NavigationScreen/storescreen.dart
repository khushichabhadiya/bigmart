import 'package:bigmart/view/NavigationScreen/shopscreen.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/apptext.dart';
import '../../utils/common/gobletext.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class store {
  final String name;
  final String subname;
  final String delivey;
  final String avlible;
  final String awy;
  final String image;

  store({
    required this.name,
    required this.subname,
    required this.delivey,
    required this.avlible,
    required this.awy,
    required this.image,
  }
  );
}

List<store> storedata = [
  store(
    name: "E- Grocery Super  Market",
    subname: "Organic ",
    delivey: "Delivery",
    avlible: "Pickup available",
    awy: '7.5 mi away',
    image: 'assets/image/image-removebg-preview (92) 1.png',
  ),
  store(
    name: 'DealShare Mart',
    subname: 'Alcohol Groceries',
    delivey: 'Delivery',
    avlible: 'Pickup available',
    awy: '7.5 mi away',
    image: 'assets/image/image-removebg-preview (93) 1.png',
  ),
  store(
    name: 'D-Mart',
    subname: 'Groceries Bakery Deli',
    delivey: 'Delivery by 10:30pm',
    avlible: 'Pickup available',
    awy: '9.5 mi away',
    image: 'assets/image/image-removebg-preview (94) 1.png',
  ),
];

class _StoreScreenState extends State<StoreScreen> {
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
                          GobleText(text: AppText.storescreen),
                          Text(
                            'We Have 36 vendors now',
                            style: TextStyle(color: Colors.white),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Container(
                          width: double.infinity,
                          height: 170,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolor.shopscreen),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.016,
                                  ),
                                  Image.asset(
                                    storedata[index].image,
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: width * 0.09,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GobleText(
                                        text: storedata[index].name,
                                        color: Appcolor.Greycolor,
                                        fontsize: 16,
                                      ),
                                      SizedBox(
                                        height: height * 0.012,
                                      ),
                                      GobleText(
                                        text: storedata[index].subname,
                                        color: Appcolor.shopscreen,
                                        fontsize: 10,
                                        fontfamily: '',
                                      ),
                                      SizedBox(
                                        height: height * 0.020,
                                      ),
                                      GobleText(
                                        text: storedata[index].delivey,
                                        color: Appcolor.Greycolor,
                                        fontsize: 10,
                                        fontfamily: '',
                                      ),
                                      GobleText(
                                        text: storedata[index].avlible,
                                        color: Appcolor.Greycolor,
                                        fontsize: 10,
                                        fontfamily: '',
                                      ),SizedBox(
                                        height: height * 0.012,
                                      ),
                                      Container(
                                        height: 27,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Appcolor.Greycolor)
                                        ),
                                        child: Center(
                                          child: GobleText(text: storedata[index].awy,fontfamily: '',fontsize: 10,color: Appcolor.Greycolor,),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
