import 'package:doctorq/View/DOCTORSIDEAPP/SplashAndAuthScreen/authselection.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_carousel_one_screen/light_carousel_one_screen.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSelectionScreen extends StatelessWidget {
  const AppSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Selection Screen"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              text: "Patient Side",
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => LightCarouselOneScreen()));
              },
            ),
            SizedBox(height: 20.h),
            AppButton(
              text: "Doctor Side",
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => AuthSelectionScreen()));
              },
            ),
          ],
        ),
      )),
    );
  }
}
