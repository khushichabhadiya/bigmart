import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Commantextfieldwidget extends StatelessWidget {
  final String text;
  final Icon? icon;
  final TextEditingController? controller;
  const Commantextfieldwidget({super.key, required this.text, this.icon,  this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GobleText(
            text: text,
            textStyle: GoogleFonts.inter(
              color: Appcolor.Greycolor,
              fontWeight: FontWeight.w600,
            ),
        ),
        const SizedBox(
          height: 9,
        ),
        SizedBox(
          height: 42,
          width: double.infinity,
          child: TextField(
controller:controller ,
            decoration: InputDecoration(
              suffixIcon: icon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Appcolor.Textfiled),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Appcolor.Textfiled),
              ),
              fillColor: Appcolor.Textfiled,
            ),
          ),
        ),

      ],
    );
  }
}
