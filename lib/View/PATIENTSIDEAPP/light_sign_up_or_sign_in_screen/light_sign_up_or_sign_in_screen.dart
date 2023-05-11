import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/light_sign_in_blank_screen/light_sign_in_blank_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_sign_up_blank_screen/light_sign_up_blank_screen.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LightSignUpOrSignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(left: 24, right: 24),
              child: Container(
                height: getVerticalSize(350),
                width: size.width,
                child: Stack(
                  children: [
                    // Image.asset(
                    //   ImageConstant.logoDecoration,
                    //   height: getVerticalSize(350),
                    //   width: size.width,
                    // ),
                    Align(
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
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 98,
                right: 24,
              ),
              child: Text(
                "Welcome to HolHealth!",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getFontSize(
                    23,
                  ),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomButton(
              isDark: isDark,
              width: size.width,
              text: "Sign Up",
              margin: getMargin(
                left: 24,
                top: 93,
                right: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LightSignUpBlankScreen()),
                );
              },
              fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
            ),
            CustomButton(
              isDark: isDark,
              width: size.width,
              text: "Sign In",
              margin: getMargin(
                left: 24,
                top: 12,
                right: 24,
                bottom: 20,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LightSignInBlankScreen()),
                );
              },
              variant: ButtonVariant.OutlineBlueA400,
            ),
          ],
        ),
      ),
    );
  }
}
