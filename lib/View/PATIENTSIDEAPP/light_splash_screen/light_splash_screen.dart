import 'dart:async';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/light_carousel_one_screen/light_carousel_one_screen.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LightSplashScreen extends StatefulWidget {
  @override
  State<LightSplashScreen> createState() => _LightSplashScreenState();
}

class _LightSplashScreenState extends State<LightSplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => LightCarouselOneScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            VerticalSpace(height: 60),
            Padding(
              padding: getPadding(left: 24, right: 24),
              child: Container(
                height: getVerticalSize(350),
                width: size.width,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstant.appLogo,
                        height: getVerticalSize(140),
                        width: getHorizontalSize(263),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SpinKitCircle(
            //   color: ColorConstant.blueA400,
            //   size: 60,
            // ),
            CircularProgressIndicator(
              backgroundColor: Colors.blue.withOpacity(0.3),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
