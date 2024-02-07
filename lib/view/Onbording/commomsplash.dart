import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/material.dart';

class CommonSplashScreen extends StatelessWidget {
  final  HomeText;
  final Hometext ;
 final image;
  const CommonSplashScreen({super.key,  this.Hometext,  this.image, this.HomeText});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: GobleText(
              textStyle: TextStyle(
                fontFamily: '',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Appcolor.primerycolor
              ), text: HomeText,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: GobleText(
              text: Hometext,
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: '',
                color: Appcolor.Greycolor
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(image,height: 288,),


        ],
      ),
    );
  }
}
