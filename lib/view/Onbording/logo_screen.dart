import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/Onbording/commomsplash.dart';
import 'package:bigmart/view/Onbording/page_view.dart';
import 'package:bigmart/view/bottpmnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {

@override
  void initState() {
    getInstance1();
    super.initState();
  }
  Future getInstance1() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var getStringdata = prefs.getString('username');
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => getStringdata != null
                    ? BottomNavigationScreen()
                    : Screen2()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Appcolor.primerycolor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Appimage.Logoimage,
              scale: 2,
            ),
            SizedBox(width: width * 0.04),
            GobleText(
              text: AppText.Bigmart,
              textStyle: TextStyle(
                fontFamily: 'InknutAntiqua',
                fontSize: 24,
                color: Appcolor.whitecolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
