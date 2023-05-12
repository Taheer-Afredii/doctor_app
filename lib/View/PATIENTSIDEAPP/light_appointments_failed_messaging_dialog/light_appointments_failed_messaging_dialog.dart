import 'package:doctorq/View/TestEnumFile.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_success_messaging_dialog/light_appointments_success_messaging_dialog.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LightAppointmentsFailedMessagingDialog extends StatelessWidget {
  CallType callTypes;
  LightAppointmentsFailedMessagingDialog({required this.callTypes});
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
                    ? ImageConstant.failedMessage
                    : callTypes == CallType.voiceCall
                        ? ImageConstant.failedCall
                        : ImageConstant.failedVideo,
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
                top: 34,
                right: 24,
              ),
              child: Text(
                "Oops, Failed",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.redA400,
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
                242.00,
              ),
              margin: getMargin(
                left: 24,
                top: 19,
                right: 24,
              ),
              child: Text(
                "Please make sure that your internet connection is active and stable, then press “Try Again”",
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
              text: "Try Again",
              margin: getMargin(
                left: 24,
                top: 26,
                right: 24,
                bottom: 20,
              ),
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return LightAppointmentsSuccessMessagingDialog(
                      callTypes: callTypes,
                    );
                  },
                );
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
