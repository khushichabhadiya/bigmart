import 'package:bigmart/utils/common/goblebutton.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/apptext.dart';
import '../../utils/common/gobletext.dart';
import '../bottpmnavigationbar.dart';

class VerificationScreen extends StatefulWidget {
  final String email;
  final String password;
  VerificationScreen({super.key, required this.email, required this.password});


  @override
  State<VerificationScreen> createState() => _VerificationScreenState();

}


TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
bool _rememberMe = false;

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.122,
            ),
            GobleText(
              text: AppText.verification,
              textStyle: TextStyle(

                fontFamily: '',
                fontWeight: FontWeight.w500,
                fontSize: height * 0.03,
                color: Appcolor.Greycolor,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GobleText(
                text: AppText.verification1,
                textStyle: TextStyle(
                  fontFamily: '',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Appcolor.Greycolor,
                ),
              ),
            ),
            GobleText(
              text: AppText.verification2,
              textStyle: TextStyle(
                fontFamily: '',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Appcolor.primerycolor,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            OTPTextField(
              length: 5,
              otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Appcolor.auth2, borderColor: Appcolor.auth2),
              width: MediaQuery.of(context).size.width,
              fieldWidth: 40,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              contentPadding: const EdgeInsets.all(12),
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              AppText.verification3,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: '',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              AppText.verification4,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  fontFamily: '',
                  fontSize: 14,
                  color: Appcolor.Greycolor),
            ),
            const SizedBox(
              height: 45,
            ),
            InkWell(
              onTap: ()  {

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigationScreen(),
                  ),
                );
              },
              child: GobleButton(
                height: height * 0.060,
                width: double.infinity,
                text: AppText.verification5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
