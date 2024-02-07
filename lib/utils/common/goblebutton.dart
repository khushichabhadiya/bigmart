import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/material.dart';

class GobleButton extends StatelessWidget {
  final double height , width;
  final String text;
  final voidcallback;
  const GobleButton({super.key, required this.height, required this.width, required this.text, this.voidcallback});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(onPressed:  voidcallback,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Appcolor.primerycolor),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GobleText(text: text,
                fontfamily: '',
                fontsize: 16,
             fontWeight: FontWeight.w500,
           ),
          ],
        ),
      ),
    );
  }
}
