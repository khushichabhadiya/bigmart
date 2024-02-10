import 'dart:developer';

import 'package:bigmart/view/Auth/verification.dart';
import 'package:bigmart/view/bottpmnavigationbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/common/appcolor.dart';
import '../../utils/common/appimage.dart';
import '../../utils/common/apptext.dart';
import '../../utils/common/gobletext.dart';
import '../../utils/common/textfiled.dart';

class AccountScreen extends StatefulWidget {
  final String email;
  final String password;
  AccountScreen({super.key, required this.email, required this.password});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  void creatAccount() async {
    String email = emailController.text.trim();
    String passwor = passwordController.text.trim();
    String name = nameController.text.trim();

    if (email == '' || passwor == '' || name == '') {
      log('Please fill in the detail');
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: passwor);
        log('user created');
        if (userCredential.user != null) {
          Navigator.pop(context);
        }
      } on FirebaseAuthException catch (e) {
        log(e.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.10,
              ),
              GobleText(
                text: AppText.account1,
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
                  text: AppText.account2,
                  textStyle: TextStyle(
                    fontFamily: '',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Appcolor.Greycolor,
                  ),
                ),
              ),
              const SizedBox(
                height: 49,
              ),
              Commantextfieldwidget(
                text: AppText.Auth4,
                controller: nameController,
              ),
              const SizedBox(
                height: 20,
              ),
              Commantextfieldwidget(
                text: AppText.Auth1,
                controller: emailController,
              ),
              const SizedBox(height: 20),
              Commantextfieldwidget(
                text: AppText.Auth2,
                controller: passwordController,
                icon: const Icon(Icons.visibility_off_outlined),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolor.Greycolor),
                      color: Appcolor.Textfiled,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppText.account3,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: '',
                      fontSize: 14,
                      color: Appcolor.Greycolor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  creatAccount();

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(email: emailcontroller.text, password: passwordcontroller.text,),
                    ),
                  );
                },
                child: Container(
                  height: 42,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.auth2,
                  ),
                  child: Center(
                    child: GobleText(
                      text: AppText.Auth5,
                      textStyle: TextStyle(
                        fontFamily: '',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Appcolor.whitecolor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 50,
                      color: Appcolor.Greycolor,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Or sign in with',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: '',
                      color: Appcolor.Greycolor,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 50,
                      color: Appcolor.Greycolor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Appcolor.Textfiled),
                      image: DecorationImage(
                        image: AssetImage(Appimage.applelogo),
                      ),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Appcolor.Textfiled),
                      image: DecorationImage(
                        image: AssetImage(
                          Appimage.googlelogo,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Appcolor.Textfiled),
                      image: DecorationImage(
                        image: AssetImage(Appimage.facebooklogo),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  text: 'Dont have a account',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      AccountScreen(email: '', password: '')));
                        },
                      text: 'singn In?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Appcolor.auth1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
