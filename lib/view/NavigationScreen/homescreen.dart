import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/goblebutton.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/utils/common/textfiled.dart';
import 'package:bigmart/view/Onbording/commomsplash.dart';
import 'package:bigmart/view/PaymentScreen/order_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Appcolor.navigation1, Appcolor.navigation2],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GobleText(
                              text: AppText.homescreen1,
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: '',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: width * 0.09,
                            ),
                            GobleText(
                              text: AppText.homescreen2,
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: '',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Row(
                          children: [
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
                            InkWell(
                              onTap: (){

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OrderSCreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Appcolor.Contaircolor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.menu,
                                    size: 29, color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: AppText.homescreen3,
                          suffixIcon: const Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Appcolor.Textfiled),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GobleText(
                        text: AppText.homescreen4,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: '',
                          fontSize: 16,
                          color: Appcolor.Greycolor,
                        ),
                      ),
                      Spacer(),
                      GobleText(
                        text: AppText.homescreen5,
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: '',
                          fontWeight: FontWeight.w400,
                          color: Appcolor.Homecolor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                        color: Appcolor.Homecolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height* 0.01,
                  ),
                  SizedBox(
                    height: 400,
                    child: GridView.builder(padding: EdgeInsets.zero,
                      itemCount: Appimage.gridviewimage.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 123,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Appcolor.Homecolor1),
                          ),
                          child: Column(
                            children: [
                              // SizedBox(
                              //   height: height * 0.007,
                              // ),
                              Container(
                                height: 100,
        
                                child: Image.asset(
                                  Appimage.gridviewimage[index],
                                  scale: 2.5,
                                ),
                              ),
        
                              GobleText(
                                text: AppText.gridviewtext[index],
                                fontsize: 15,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * 0.0,
                  ),
                  Container(
                    height: 129,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Appcolor.Homecolor2,
                      borderRadius: BorderRadius.circular(7)
                    ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.08,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height *0.010,
                                ),
                                RichText(text: TextSpan(
                                  text: 'Fresh ',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: '',
                                    fontSize: 18,
                                  ),
                                  children: [TextSpan(
                                      text: ' Fruits',
                                      style: TextStyle(
                                          color:Appcolor.Greycolor,
                                        fontSize: 18,
                                        fontFamily: '',
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                  ],
                                ),
                                ),
        
                                GobleText(text: AppText.homescreen7,
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: '',
                                  fontSize: 12,
                                  color: Appcolor.Greycolor,
                                ),),
                                GobleButton(height: 30, width: 150, text: AppText.homescreen8),
                              ],
                            ),
                            Spacer(),
                            Image.asset(Appimage.homescreen)
                          ],
                        ),
        
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
