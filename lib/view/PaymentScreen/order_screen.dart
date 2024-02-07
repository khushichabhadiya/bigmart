import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/bottpmnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSCreen extends StatefulWidget {
  const OrderSCreen({super.key});

  @override
  State<OrderSCreen> createState() => _OrderSCreenState();
}

class _OrderSCreenState extends State<OrderSCreen> {
  List<String> Department = [
    'Home',
    'Shop',
    'Stores',
    'Mega Menu',
    'Pages',
    'Acount'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    // Image.asset(
                    //
                    //
                    // ),
                    SizedBox(
                      width: 9,
                    ),
                    GobleText(
                      text: AppText.cardscreen,
          
                      fontsize: 14,
                      color: Appcolor.primerycolor,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (context) => BottomNavigationScreen(),), (
                            route) => false);
                      },
                      child: Icon(
                        Icons.close,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search items',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 32,
                      width: 98,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Appcolor.shopscreen,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Appcolor.shopscreen
          
          
                      ,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Appcolor.primerycolor,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                    Image.asset('assets/image/pin (1) 2.png',scale: 2,),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GobleText(text: 'Delivery in 16 minutes',
                      fontsize: 12,
                        fontWeight: FontWeight.w400,
                        color: Appcolor.shopscreen,
                      ),
                      GobleText(text: 'H.No. 2834 Street, 784 Sector, Adyar, Chennai',
                      fontWeight: FontWeight.w400,
                        fontsize: 12,
                        color: Appcolor.shopscreen,
                      ),
                      
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp)
                ],
              ),
              SizedBox(
                height: 40,
              ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Appcolor.shopscreen),
                borderRadius: BorderRadius.circular(10),
                color: Appcolor.primerycolor,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 27,
                  ),
                  Image.asset('assets/image/category (2) 1.png',scale: 3,),
                  SizedBox(
                      width: 14,
                  ),
                  GobleText(text: 'All Departments',
                  fontsize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: Department.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      Department[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
