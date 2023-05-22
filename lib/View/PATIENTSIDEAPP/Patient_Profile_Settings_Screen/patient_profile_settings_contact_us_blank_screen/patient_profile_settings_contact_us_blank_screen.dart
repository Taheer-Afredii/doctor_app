import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_text_form_field.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PatientProfileSettingsContactUsBlankScreen extends StatelessWidget {
  TextEditingController autoLayoutHorOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 36,
              ),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 241,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 4), child: BkBtn()),
                    Padding(
                      padding: getPadding(
                        left: 20,
                      ),
                      child: Text(
                        "Contact us",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            26,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  profileLabelText(text: "Full Name", padding: 24.w),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    isDark: isDark,
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Full Name",
                    margin: getMargin(
                      top: 11,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 24.h),
                  profileLabelText(text: "Email", padding: 24.w),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    isDark: isDark,
                    width: 380,
                    focusNode: FocusNode(),
                    hintText: "Email",
                    margin: getMargin(
                      top: 11,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 24.h),
                  profileLabelText(text: "Message", padding: 24.w),
                  CustomTextFormField(
                    isDark: isDark,
                    width: double.infinity,
                    focusNode: FocusNode(),
                    hintText: "Message",
                    margin: getMargin(
                      top: 12,
                    ),
                    shape: TextFormFieldShape.RoundedBorder16,
                    padding: TextFormFieldPadding.PaddingAll18,
                    fontStyle:
                        TextFormFieldFontStyle.SourceSansProSemiBold16Gray900,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.centerLeft,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 30,
                        right: 14,
                        bottom: 6,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        0.00,
                      ),
                      minHeight: getVerticalSize(
                        6.00,
                      ),
                    ),
                    maxLines: 8,
                  ),
                  CustomButton(
                    isDark: isDark,
                    width: 380,
                    text: "Send Message",
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    variant: ButtonVariant.FillBlueA400,
                    fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                    alignment: Alignment.center,
                    suffixWidget: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.send,
                        size: 20,
                        color: ColorConstant.whiteA700,
                      ),
                    ),
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
