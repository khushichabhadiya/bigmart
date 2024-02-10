import 'dart:developer';

import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/textfiled.dart';
import 'package:bigmart/view/Auth/account_screen.dart';
import 'package:bigmart/view/Onbording/commomsplash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/common/gobletext.dart';
import '../NavigationScreen/homescreen.dart';
import '../bottpmnavigationbar.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController= TextEditingController();


  void sing() async {
    String email = emailController.text.trim();
    String passwor = passwordController.text.trim();
    String name = nameController.text.trim();

    if (email == '' || passwor == '' || name == '') {
      log('Please fill in the detail');
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: passwor);
        log('user created');
        if (userCredential.user != null) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
              context, CupertinoPageRoute(builder: (context) => BottomNavigationScreen()));

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
                height: height * 0.14,
              ),
              GobleText(
                text: AppText.Screen,
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
                  text: AppText.Screen5,
                  textStyle: TextStyle(
                    fontFamily: '',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Appcolor.Greycolor,
                  ),
                ),
              ),
              SizedBox(
                height: 49,
              ),
              Commantextfieldwidget(
                text: AppText.Auth1,
                controller: emailController,
              ),
              SizedBox(height: 40),
              Commantextfieldwidget(
                text: AppText.Auth2,
                controller: passwordController,
                icon: Icon(Icons.visibility_off_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Paaword?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: '',
                      color: Appcolor.auth1,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                          sing();
                  if (emailController.text.isNotEmpty&&passwordController.text.isNotEmpty){
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString('username', emailcontroller.text);
                    Navigator.pushReplacement(

                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountScreen(email: '', password: '',),
                      ),
                    );
                  }
                  else{
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Invalid Login'),
                        content: Text('Please enter valid username and password'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    });
                  }
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
                      text: AppText.Auth3,
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
              SizedBox(
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
                  SizedBox(
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
                  SizedBox(
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
              SizedBox(
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
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  text: 'Dont have a account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => AccountScreen(
                                          email: '',
                                          password: '',
                                        )));
                          },
                        text: 'singn Up?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Appcolor.auth1)),
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
