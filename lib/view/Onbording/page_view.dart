import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/goblebutton.dart';
import 'package:bigmart/utils/common/gobletext.dart';
import 'package:bigmart/view/Auth/screen5.dart';
import 'package:bigmart/view/Onbording/commomsplash.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final _controller = PageController();
  bool isLastPage = false;

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 600,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                CommonSplashScreen(
                  HomeText: AppText.Name,
                  Hometext: AppText.NameScreen,
                  image: Appimage.onbordingimage1,
                ),
                CommonSplashScreen(
                  HomeText: AppText.HomeText,
                  Hometext: AppText.Hometext,
                  image: Appimage.onbordingimage2,
                ),
                CommonSplashScreen(
                  HomeText: AppText.HomeW,
                  Hometext: AppText.HomeWd,
                  image: Appimage.onbordingimage3,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: ExpandingDotsEffect(
                    spacing: 8.0,
                    radius: 1,
                    dotWidth: 10,
                    dotHeight: 5,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 0,
                    dotColor: Appcolor.primerycolor,
                    activeDotColor: Appcolor.primerycolor),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
        ],
      ),
      bottomSheet: isLastPage
          ? Padding(
            padding:  EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Screen5 ()), (route) => false);
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStatePropertyAll(Appcolor.primerycolor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),)
              ),
              child: Text(
                'Start',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: '',
                    color: Colors.white),
              ),
            ),
          )
          : Container(
              height: 80,
              color: Appcolor.whitecolor,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: Text('skip'),
                  ),
               Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(microseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Appcolor.primerycolor),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: '',
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),

    );
  }
}
