import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Autolayouthor5ItemWidget extends StatelessWidget {
  Autolayouthor5ItemWidget();

  @override
  Widget build(BuildContext context) {
// bool isRtl = context.locale==Constants.arLocal;
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(
            left: 16,
            top: 16,
            right: 12,
            bottom: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 44,
                width: 44,
                margin: getMargin(
                  left: 30,
                  right: 30,
                ),
                variant: IconButtonVariant.FillBlueA40019,
                shape: IconButtonShape.CircleBorder22,
                child: CommonImageView(
                  imagePath: ImageConstant.imgAutolayouthor,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 14,
                  right: 30,
                ),
                child: Text(
                  "5000+",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorConstant.blueA400,
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 30,
                  top: 8,
                  right: 29,
                  bottom: 3,
                ),
                child: Text(
                  "Patients",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      14,
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
    );
  }
}
