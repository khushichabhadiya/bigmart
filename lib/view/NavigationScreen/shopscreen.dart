import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/common/appcolor.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class Name {
  String image;
  String name;
  String subname;
  String qty;
  String prices;

  Name(

  {

  required

  this

      .

  image,
  required this.name,
  required this.subname,
  required this.qty,
  required this.prices,
});
}

List<Name> shopdate =[
  Name(
      image: 'assets/image/image-removebg-preview (84) 1.png',
      name: 'Chocolate',
      subname: 'Bittersweet Chocolate',
      qty: ' 2* 90 kg',
      prices: '120'),
  Name(
      image: 'assets/image/image-removebg-preview (85) 1.png',
      name: 'Egg',
      subname: 'Egg box',
      qty: '2 * 80 kg',
      prices: '80'),
  Name(
      image: 'assets/image/image-removebg-preview (86) 1.png',
      name: 'Butter',
      qty: '2 * 85 kg',
      subname: ' Vegetable oil butter...',
      prices: '150',),
  Name(
      image: 'assets/image/image-removebg-preview (89) 1.png',
      name: 'Beer',
      subname: 'Lager beer ',
      qty: '1 /2 bil',
      prices: '100'),
];

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    GobleText(text: AppText.shopscreen),
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
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 288,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolor.shopscreen),
                        borderRadius: BorderRadius.all(Radius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(shopdate[index].image,height: 130,),

                          GobleText(text: shopdate[index].name,
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: '',
                              fontWeight: FontWeight.w400,
                              color: Appcolor.Homecolor1
                            ),
                            color: Appcolor.Greycolor,),

                          GobleText(text: shopdate[index].subname,
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: '',
                              fontSize: 14,
                              color: Appcolor.Greycolor,
                            ),
                            color: Appcolor.Greycolor,
                          ),
                          GobleText(text: shopdate[index].qty,
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: '',
                              fontWeight: FontWeight.w500,
                            ),
                            color: Appcolor.Homecolor1,
                          ),
                        Spacer(),
                        Row(
                          children: [
                            GobleText(text: "₹ ${shopdate[index].prices}",
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: '',
                                fontSize: 14
                              ),
                              color: Appcolor.Greycolor,
                            ),
                          Spacer(),
                            OutlinedButton(onPressed: () {
                            },
                                child: Text('ADD',style: TextStyle(
                                  color: Appcolor.primerycolor,
                                ),),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Appcolor.primerycolor,width:3)
                            )
                            )
                          ],
                        ),
                        ],

                      ),
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
