import 'package:doctorq/View/PATIENTSIDEAPP/light_appointments_list_voice_call_ringing_screen/light_appointments_list_voice_call_ringing_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/appointments_lists.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listreply1ItemWidget extends StatelessWidget {
  int index;
  Listreply1ItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        ),
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              builder: (context) =>
                  LightAppointmentsListVoiceCallRingingScreen()));
        },
        child: Container(
          height: getVerticalSize(100),
          margin: getMargin(
            top: 8.0,
            bottom: 8.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                12.00,
              ),
            ),
            border: Border.all(
              color: isDark ? ColorConstant.darkLine : ColorConstant.bluegray50,
              width: getHorizontalSize(
                1.00,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: getSize(
                  100.00,
                ),
                width: getSize(
                  100.00,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            12.00,
                          ),
                        ),
                        bottomLeft: Radius.circular(
                          getHorizontalSize(
                            12.00,
                          ),
                        ),
                        bottomRight: Radius.circular(
                          getHorizontalSize(
                            0.00,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            0.00,
                          ),
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: upcommingList[index].img,
                        height: getSize(
                          100.00,
                        ),
                        width: getSize(
                          100.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    CustomIconButton(
                      // isRtl: isRtl,
                      height: 36,
                      width: 36,
                      margin: getMargin(
                        top: 10,
                      ),
                      variant: IconButtonVariant.OutlineIndigoA20014_1,
                      shape: IconButtonShape.CustomBorderTL12,
                      alignment: Alignment.bottomRight,
                      child: Image.asset(upcommingList[index].contactMethodIcon,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              HorizontalSpace(width: 20),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              upcommingList[index].name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    upcommingList[index].contactMethodIcon ==
                                            ImageConstant.call
                                        ? 'VoiceCall'
                                        : upcommingList[index]
                                                    .contactMethodIcon ==
                                                ImageConstant.videocam
                                            ? 'VideoCall'
                                            : 'Message',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        11,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "-",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      upcommingList[index].status,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: upcommingList[index].status ==
                                                'Scheduled'
                                            ? ColorConstant.indigo601
                                            : upcommingList[index].status ==
                                                    'Completed'
                                                ? Color(0xFF23A757)
                                                : Color(0xFFDA1414),
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Text(
                                upcommingList[index].time,
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
                      Container(
                        margin: getMargin(left: 0, right: 20),
                        padding: getPadding(all: 10),
                        height: getVerticalSize(44),
                        width: getHorizontalSize(44),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstant.blueA400.withOpacity(0.1),
                        ),
                        child: CommonImageView(
                          imagePath: upcommingList[index].contactMethodIcon,
                          color: ColorConstant.blueA400,
                        ),
                      ),
                    ],
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
