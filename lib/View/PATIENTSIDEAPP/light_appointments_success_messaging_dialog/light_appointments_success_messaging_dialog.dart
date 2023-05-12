import 'package:doctorq/View/TestEnumFile.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/home.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_step_2_filled_screen/light_appointments_step_2_filled_screen.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightAppointmentsSuccessMessagingDialog extends StatelessWidget {
  CallType callTypes;
  LightAppointmentsSuccessMessagingDialog({required this.callTypes});
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
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
                top: 32,
                right: 24,
              ),
              child: CommonImageView(
                imagePath: callTypes == CallType.message
                    ? ImageConstant.successMessage
                    : callTypes == CallType.voiceCall
                        ? ImageConstant.successCall
                        : ImageConstant.successVideo,
                height: getVerticalSize(
                  192.00,
                ),
                width: getHorizontalSize(
                  199.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 31,
                right: 24,
              ),
              child: Text(
                "Successful",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.blueA400,
                  fontSize: getFontSize(
                    29,
                  ),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                263.00,
              ),
              margin: getMargin(
                left: 24,
                top: 22,
                right: 24,
              ),
              child: Text(
                "Your appointment booking successfully completed. Dr. Jenny Wilson will Message you soon.",
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
            CustomButton(
              isDark: isDark,
              width: 272,
              text: "OK",
              margin: getMargin(
                left: 24,
                top: 26,
                right: 24,
                bottom: 20,
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Home()),
                    (Route<dynamic> route) => false);
                // Navigator.pop(context);
              },
              shape: ButtonShape.CircleBorder24,
              fontStyle: ButtonFontStyle.SourceSansProSemiBold16WhiteA700,
            ),
          ],
        ),
      ),
    );
  }
}
