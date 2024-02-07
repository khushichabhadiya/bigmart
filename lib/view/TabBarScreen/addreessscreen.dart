import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/material.dart';

class addreessScreen extends StatefulWidget {
  const addreessScreen({super.key});

  @override
  State<addreessScreen> createState() => _addreessScreenState();
}

class Address {
  String image;
  String image1;
  String image2;
  String name;
  String subname;
  String edit;
  String delete;

  Address({
    required this.name,
    required this.subname,
    required this.image,
    required this.image1,
    required this.image2,
    required this.edit,
    required this.delete,
  });
}

List<Address> Addressdata = [
  Address(
    name: "Home",
    edit: "Edit",
    delete: "Delete",
    subname: 'H.No. 2834 Street, 784 Sector...',
    image: 'assets/image/homepage 1.png',
    image1: 'assets/image/edit (3) 3.png',
    image2: 'assets/image/delete 1.png',
  ),
  Address(
    name: "Chennai",
    edit: "Edit",
    delete: "Delete",
    subname: '658475  Street, 784 Sector, Chenn...',
    image: 'assets/image/location (4) 1.png',
    image1: 'assets/image/edit (3) 3.png',
    image2: 'assets/image/delete 1.png',
  ),
  Address(
    name: "Office",
    edit: "Edit",
    delete: "Delete",
    subname: '36547,  784 Sector, Chennai. Ad...',
    image: 'assets/image/briefcase (2) 1.png',
    image1: 'assets/image/edit (3) 3.png',
    image2: 'assets/image/delete 1.png',
  ),
];

class _addreessScreenState extends State<addreessScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                GobleText(
                  text: AppText.addreesscrren,
                  fontsize: 24,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.Greycolor,
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 108,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Appcolor.primerycolor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Appcolor.primerycolor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        GobleText(
                          text: AppText.AddressScreen,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontsize: 15,
                        ),
                      ],
                    ),
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
                      width: double.infinity,
                      height: 71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                        color: Appcolor.shopscreen,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.016,
                              ),
                              Image.asset(
                                Addressdata[index].image,
                                scale: 3,
                              ),
                              SizedBox(
                                width: width * 0.09,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GobleText(
                                    text: Addressdata[index].name,
                                    fontsize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolor.Greycolor,
                                  ),
                                  GobleText(
                                    text: Addressdata[index].subname,
                                    fontWeight: FontWeight.w500,
                                    fontsize: 10,
                                    color: Appcolor.Greycolor,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: width * 0.08,
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    Addressdata[index].image1,
                                    color: Appcolor.primerycolor,
                                    scale: 3,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  GobleText(
                                    text: Addressdata[index].edit,
                                    color: Appcolor.primerycolor,
                                    fontsize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Addressdata[index].image2,
                                    color: Appcolor.Greycolor,
                                    scale: 3,
                                  ),
                                  GobleText(
                                    text: Addressdata[index].delete,
                                    color: Appcolor.Greycolor,
                                    fontWeight: FontWeight.w500,
                                    fontsize: 10,
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
      ),
    );
  }
}
