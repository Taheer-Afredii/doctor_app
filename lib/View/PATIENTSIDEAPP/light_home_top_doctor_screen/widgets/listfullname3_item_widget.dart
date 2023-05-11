import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:flutter/material.dart';

import '../../light_appointments_book_screen/light_appointments_book_screen.dart';

// ignore: must_be_immutable
class Listfullname3ItemWidget extends StatefulWidget {
  int index;

  Listfullname3ItemWidget({required this.index});

  @override
  State<Listfullname3ItemWidget> createState() =>
      _Listfullname3ItemWidgetState();
}

class _Listfullname3ItemWidgetState extends State<Listfullname3ItemWidget> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => LightAppointmentsBookScreen(
                  doctor: doctorList[widget.index],
                )));
      },
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        height: getVerticalSize(100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              12.00,
            ),
          ),
          color: isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
          border: Border.all(
            color: ColorConstant.bluegray50,
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
                imagePath: doctorList[widget.index].img,
                height: getSize(
                  100.00,
                ),
                width: getSize(
                  100.00,
                ),
                fit: BoxFit.fill,
              ),
            ),
            HorizontalSpace(width: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: getPadding(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            doctorList[widget.index].name,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                  imagePath: ImageConstant.starHalf,
                                  color: ColorConstant.blueA400,
                                  height: getSize(
                                    16.00,
                                  ),
                                  width: getSize(
                                    16.00,
                                  ),
                                ),
                                HorizontalSpace(width: 4),
                                Text(
                                  "4.7 (4692 reviews)",
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
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(top: 3),
                            child: Text(
                              doctorList[widget.index].specialization,
                              maxLines: 2,
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
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: isRtl ? 20 : 0,
                      right: isRtl ? 0 : 20,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        setState(() {
                          isFav = !isFav;
                        });
                      },
                      child: Container(
                        padding: getPadding(all: 10),
                        height: getVerticalSize(44),
                        width: getHorizontalSize(44),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstant.blueA400.withOpacity(0.1),
                        ),
                        child: CommonImageView(
                          imagePath: isFav
                              ? ImageConstant.favorite
                              : ImageConstant.favoriteBorder,
                          color: ColorConstant.blueA400,
                        ),
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
