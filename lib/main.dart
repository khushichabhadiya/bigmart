import 'package:bigmart/view/Auth/account_screen.dart';
import 'package:bigmart/view/Auth/screen5.dart';
import 'package:bigmart/view/Auth/verification.dart';
import 'package:bigmart/view/NavigationScreen/homescreen.dart';
import 'package:bigmart/view/Onbording/logo_screen.dart';
import 'package:bigmart/view/Onbording/page_view.dart';
import 'package:bigmart/view/bottpmnavigationbar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LogoScreen(),
    );
  }
}
