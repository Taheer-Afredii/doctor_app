import 'package:animate_do/animate_do.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_search_view.dart';
import '../../../core/utils/size_utils.dart';
import '../light_history_video_call_page/widgets/listreply3_item_widget.dart';
import '../light_history_video_call_page/widgets/listreply_two2_item_widget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightHistoryVideoCallPage extends StatelessWidget {
  TextEditingController autoLayoutVerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
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
                      focusNode: FocusNode(),
                      controller: autoLayoutVerController,
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
                  // HorizontalSpace(width: 12),
                  // Container(
                  //   padding: getPadding(all: 10),
                  //   height: getVerticalSize(44),
                  //   width: getHorizontalSize(44),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(12),
                  //     color: ColorConstant.blueA400.withOpacity(0.1),
                  //   ),
                  //   child: CommonImageView(
                  //     imagePath: ImageConstant.filter,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 16,
              right: 24,
            ),
            child: Text(
              "Today",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: isDark ? Colors.white : ColorConstant.bluegray800,
                fontSize: getFontSize(
                  16,
                ),
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          FadeInUp(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 16,
                  right: 24,
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Listreply3ItemWidget(
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
              top: 20,
              right: 24,
            ),
            child: Text(
              "Yesterday, March 25 2022",
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
          FadeInUp(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 16,
                  bottom: 40,
                  right: 24,
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListreplyTwo2ItemWidget(
                      index: index + 2,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
