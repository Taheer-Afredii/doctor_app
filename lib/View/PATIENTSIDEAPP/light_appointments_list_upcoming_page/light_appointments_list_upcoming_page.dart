import 'package:animate_do/animate_do.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_search_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/appointments_lists.dart';
import '../light_appointments_list_messaging_screen/light_appointments_list_messaging_screen.dart';
import '../light_appointments_list_upcoming_page/widgets/listreply1_item_widget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../light_appointments_list_video_call_screen/light_appointments_list_video_call_screen.dart';
import '../light_appointments_list_voice_call_screen/light_appointments_list_voice_call_screen.dart';

// ignore_for_file: must_be_immutable
class LightAppointmentsListUpcomingPage extends StatelessWidget {
  TextEditingController autoLayoutVerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: CustomSearchView(
                      isDark: isDark,
                      width: 324,
                      controller: autoLayoutVerController,
                      focusNode: FocusNode(canRequestFocus: false),
                      hintText: "Search",
                      suffix: Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              15.00,
                            ),
                            left: getHorizontalSize(
                              15.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.search,
                          )),
                      suffixConstraints: BoxConstraints(
                        maxWidth: getHorizontalSize(
                          54.00,
                        ),
                        maxHeight: getVerticalSize(
                          24.00,
                        ),
                      ),
                    ),
                  ),

                  HorizontalSpace(width: 12),
                  //  Container(

                  //       padding: getPadding(all: 10),
                  //       height: getVerticalSize(44),
                  //       width: getHorizontalSize(44),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12),
                  //         color: ColorConstant.blueA400.withOpacity(0.1),

                  //       ),
                  //       child: CommonImageView(
                  //         imagePath:ImageConstant.filter,
                  //       ),

                  //     ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 29,
              right: 24,
            ),
            child: Text(
              "Tomorrow, March 27 2022",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: isDark
                    ? ColorConstant.whiteA700
                    : ColorConstant.bluegray800,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: FadeInUp(
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 18,
                  right: 24,
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: upcommingList.length,
                  itemBuilder: (context, index) {
                    return Listreply1ItemWidget(
                      index: index,
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 21,
              right: 24,
            ),
            child: Text(
              "Today, March 26 2022",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: isDark
                    ? ColorConstant.whiteA700
                    : ColorConstant.bluegray800,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          VerticalSpace(height: 10),
          InkWell(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                12.00,
              ),
            ),
            onTap: () {
              if (upcommingList[2].contactMethodIcon == ImageConstant.call)
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            LightAppointmentsListMessagingScreen(
                              appointment: upcommingList[2],
                            )));
              else if (upcommingList[2].contactMethodIcon ==
                  ImageConstant.videocam)
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            LightAppointmentsListVideoCallScreen(
                                appointment: upcommingList[2])));
              else
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            LightAppointmentsListVoiceCallScreen(
                              appointment: upcommingList[2],
                            )));
            },
            child: Container(
              height: getVerticalSize(100),
              margin: getMargin(top: 8.0, bottom: 8.0, right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12.00,
                  ),
                ),
                border: Border.all(
                  color: isDark
                      ? ColorConstant.darkLine
                      : ColorConstant.bluegray50,
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: isRtl
                                  ? Radius.circular(
                                      getHorizontalSize(
                                        0.00,
                                      ),
                                    )
                                  : Radius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                              bottomLeft: isRtl
                                  ? Radius.circular(
                                      getHorizontalSize(
                                        0.00,
                                      ),
                                    )
                                  : Radius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                              bottomRight: isRtl
                                  ? Radius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    )
                                  : Radius.circular(
                                      getHorizontalSize(
                                        0.00,
                                      ),
                                    ),
                              topRight: isRtl
                                  ? Radius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    )
                                  : Radius.circular(
                                      getHorizontalSize(
                                        0.00,
                                      ),
                                    ),
                            ),
                            child: CommonImageView(
                              imagePath: upcommingList[2].img,
                              height: getSize(
                                100.00,
                              ),
                              width: getSize(
                                100.00,
                              ),
                              fit: BoxFit.cover,
                            ),
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
                          alignment: isRtl
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                          child: Image.asset(
                            upcommingList[2].contactMethodIcon,
                            color: Colors.white,
                          ),
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
                                  upcommingList[2].name,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "Video Call",
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
                                          "Scheduled",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.indigo601,
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
                                    upcommingList[2].time,
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
                            margin: getMargin(
                                left: isRtl ? 20 : 0, right: isRtl ? 0 : 20),
                            padding: getPadding(all: 10),
                            height: getVerticalSize(44),
                            width: getHorizontalSize(44),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstant.blueA400.withOpacity(0.1),
                            ),
                            child: CommonImageView(
                              imagePath: upcommingList[2].contactMethodIcon,
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
          VerticalSpace(height: 40),
        ],
      ),
    );
  }
}
