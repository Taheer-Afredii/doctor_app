import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/light_sign_up_or_sign_in_screen/light_sign_up_or_sign_in_screen.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LightCarouselOneScreen extends StatefulWidget {
  @override
  State<LightCarouselOneScreen> createState() => _LightCarouselOneScreenState();
}

class _LightCarouselOneScreenState extends State<LightCarouselOneScreen> {
  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _pageController = new PageController(initialPage: _currentIndex);
    _pageController!.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: PageView(
                onPageChanged: (index) {
                  _currentIndex = index;
                  setState(() {});
                },
                controller: _pageController,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          imagePath: ImageConstant.onBoarding1,
                          height: size.height,
                          width: size.width,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height / 2.5,
                          decoration: BoxDecoration(
                            color: isDark
                                ? ColorConstant.darkBg
                                : ColorConstant.whiteA700,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 10,
                                  right: 24,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFrame,
                                  height: getVerticalSize(
                                    3.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                ),
                              ),
                              VerticalSpace(height: 24),
                              Text(
                                "Thousands of Practitioner",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.blueA400,
                                  fontSize: getFontSize(
                                    23,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  363.00,
                                ),
                                margin: getMargin(
                                  top: 28,
                                ),
                                child: Text(
                                  "You can easily contact with a thousands of doctors and contact for your needs.",
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          imagePath: ImageConstant.onBoarding2,
                          height: size.height,
                          width: size.width,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height / 2.5,
                          decoration: BoxDecoration(
                            color: isDark
                                ? ColorConstant.darkBg
                                : ColorConstant.whiteA700,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 10,
                                  right: 24,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFrame,
                                  height: getVerticalSize(
                                    3.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                ),
                              ),
                              VerticalSpace(height: 24),
                              Text(
                                "Voicecall with Practitioner",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.blueA400,
                                  fontSize: getFontSize(
                                    23,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  363.00,
                                ),
                                margin: getMargin(
                                  top: 28,
                                ),
                                child: Text(
                                  "Easily connect with doctor, start Voice call for your better treatment & prescription.",
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          imagePath: ImageConstant.onBoarding3,
                          height: size.height,
                          width: size.width,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height / 2.5,
                          decoration: BoxDecoration(
                            color: isDark
                                ? ColorConstant.darkBg
                                : ColorConstant.whiteA700,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 10,
                                  right: 24,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFrame,
                                  height: getVerticalSize(
                                    3.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                ),
                              ),
                              VerticalSpace(height: 24),
                              Text(
                                "Videocall with Practitioner",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.blueA400,
                                  fontSize: getFontSize(
                                    23,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  363.00,
                                ),
                                margin: getMargin(
                                  top: 28,
                                ),
                                child: Text(
                                  "Easily connect with doctor, start video call for your better treatment & prescription.",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getVerticalSize(
                      6.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 26,
                      right: 24,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: _currentIndex,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 12,
                        activeDotColor: ColorConstant.blueA400,
                        dotColor: ColorConstant.bluegray50,
                        dotHeight: getVerticalSize(
                          6.00,
                        ),
                        dotWidth: getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 30,
                      right: 24,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LightSignUpOrSignInScreen()),
                        );
                      },
                      child: Text(
                        "Skip",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.blueA400,
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    isDark: isDark,
                    width: size.width,
                    text: "Next",
                    margin: getMargin(
                      left: 24,
                      top: 28,
                      right: 24,
                      bottom: 20,
                    ),
                    onTap: () {
                      if (_currentIndex < 2) {
                        _pageController!.animateToPage(_currentIndex + 1,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastOutSlowIn);
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LightSignUpOrSignInScreen()),
                        );
                      }
                    },
                    fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
