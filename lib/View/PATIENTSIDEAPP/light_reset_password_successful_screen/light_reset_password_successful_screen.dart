import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';

import 'package:flutter/material.dart';

import '../light_sign_in_blank_screen/light_sign_in_blank_screen.dart';

class LightResetPasswordSuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VerticalSpace(height: 20),
              Column(
                children: [
                  Padding(
                    padding: getPadding(left: 24, right: 24, top: 24),
                    child: Container(
                      height: getVerticalSize(190),
                      width: getHorizontalSize(200),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImageConstant.appLogo,
                                  height: getVerticalSize(80),
                                  width: getHorizontalSize(220),
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
                      top: 35,
                      right: 24,
                    ),
                    child: Text(
                      "Congrats!",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.blueA400,
                        fontSize: getFontSize(
                          32,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 34,
                      right: 24,
                    ),
                    child: Text(
                      "Your account is ready to use",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                isDark: isDark,
                width: size.width,
                text: "Go to LoginPage",
                margin: getMargin(
                  left: 24,
                  right: 24,
                  bottom: 20,
                ),
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => LightSignInBlankScreen()),
                      (Route<dynamic> route) => false);
                },
                fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
