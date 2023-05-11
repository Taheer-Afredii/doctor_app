import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/friends_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListdarrellstewardItemWidget extends StatefulWidget {
  int index;
  ListdarrellstewardItemWidget({required this.index});

  @override
  State<ListdarrellstewardItemWidget> createState() =>
      _ListdarrellstewardItemWidgetState();
}

class _ListdarrellstewardItemWidgetState
    extends State<ListdarrellstewardItemWidget> {
  bool isInvited = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = context.locale == Constants.arLocal;
    bool isRtl = false;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: getVerticalSize(80),
        padding: getPadding(
          left: isRtl ? 20 : 0,
          right: isRtl ? 0 : 20,
        ),
        margin: getMargin(
          top: 12.0,
          bottom: 12.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              12.00,
            ),
          ),
          color: isDark ? ColorConstant.darkContainer : ColorConstant.whiteA700,
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
            ClipRRect(
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
                imagePath: friendsList[widget.index].img,
                height: getSize(
                  80.00,
                ),
                width: getSize(
                  80.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
            HorizontalSpace(width: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          friendsList[widget.index].name,
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
                          child: Text(
                            "+62-818-5551-71",
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
                      ],
                    ),
                    CustomButton(
                      isDark: isDark,
                      width: 80,
                      text: isInvited ? "Invited" : "Invite",
                      variant: isInvited
                          ? ButtonVariant.GradientBlueA400Blue300
                          : ButtonVariant.OutlineBlueA400,
                      shape: ButtonShape.RoundedBorder18,
                      padding: ButtonPadding.PaddingAll9,
                      fontStyle: isInvited
                          ? ButtonFontStyle.SourceSansProSemiBold14
                          : ButtonFontStyle.SourceSansProSemiBold14BlueA400,
                      onTap: () {
                        setState(() {
                          isInvited = true;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
