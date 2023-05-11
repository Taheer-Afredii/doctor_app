import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';

import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:doctorq/models/doctors_model.dart';
import 'package:flutter/material.dart';

import '../light_appointments_book_screen/light_appointments_book_screen.dart';

class LightHomeFavoriteDoctorScreen extends StatefulWidget {
  @override
  State<LightHomeFavoriteDoctorScreen> createState() =>
      _LightHomeFavoriteDoctorScreenState();
}

class _LightHomeFavoriteDoctorScreenState
    extends State<LightHomeFavoriteDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 26,
              ),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 8,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          BkBtn(),
                          HorizontalSpace(width: 20),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "Favorite Doctor",
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
                    //  Container(

                    //         padding: getPadding(all: 10),
                    //         height: getVerticalSize(44),
                    //         width: getHorizontalSize(44),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(12),
                    //           color: ColorConstant.blueA400.withOpacity(0.1),

                    //         ),
                    //         child: CommonImageView(
                    //           imagePath:ImageConstant.filter,
                    //         ),

                    //       ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: favDoctorsList.length == 0
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageConstant.empty,
                            width: getHorizontalSize(240),
                            height: getVerticalSize(250),
                          ),
                          VerticalSpace(height: 34),
                          Text(
                            'Your favorite list is empty',
                            style: TextStyle(
                              fontSize: getFontSize(23),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Source Sans Pro',
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: getPadding(
                        top: 26,
                        left: 24,
                        right: 24,
                      ),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: favDoctorsList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightAppointmentsBookScreen(
                                          doctor: doctorList[index],
                                        )));
                          },
                          child: Container(
                            margin: getMargin(
                              top: 12.0,
                              bottom: 12.0,
                            ),
                            height: getVerticalSize(100),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? ColorConstant.darkContainer
                                  : ColorConstant.whiteA700,
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
                                    imagePath: favDoctorsList[index].img,
                                    height: getSize(
                                      100.00,
                                    ),
                                    width: getSize(
                                      100.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                HorizontalSpace(width: 20),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                favDoctorsList[index].name,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CommonImageView(
                                                      imagePath: ImageConstant
                                                          .starHalf,
                                                      color: ColorConstant
                                                          .blueA400,
                                                      height: getSize(
                                                        16.00,
                                                      ),
                                                      width: getSize(
                                                        16.00,
                                                      ),
                                                    ),
                                                    HorizontalSpace(width: 4),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        bottom: 2,
                                                      ),
                                                      child: Text(
                                                        "4.9 (3821 reviews)",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: getFontSize(
                                                            11,
                                                          ),
                                                          fontFamily:
                                                              'Source Sans Pro',
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                                  favDoctorsList[index]
                                                      .specialization,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      11,
                                                    ),
                                                    fontFamily:
                                                        'Source Sans Pro',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        borderRadius: BorderRadius.circular(12),
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                top: Radius.circular(24),
                                              )),
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            40.00,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            40.00,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 24,
                                                            top: 8,
                                                            right: 24,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFrame,
                                                            height:
                                                                getVerticalSize(
                                                              3.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              38.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: getMargin(
                                                            top: 12.0,
                                                            left: 20,
                                                            right: 20,
                                                            bottom: 12.0,
                                                          ),
                                                          height:
                                                              getVerticalSize(
                                                                  100),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: isDark
                                                                ? ColorConstant
                                                                    .darkContainer
                                                                : ColorConstant
                                                                    .whiteA700,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                12.00,
                                                              ),
                                                            ),
                                                            border: Border.all(
                                                              color: isDark
                                                                  ? ColorConstant
                                                                      .darkLine
                                                                  : ColorConstant
                                                                      .bluegray50,
                                                              width:
                                                                  getHorizontalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                    getHorizontalSize(
                                                                      12.00,
                                                                    ),
                                                                  ),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                    getHorizontalSize(
                                                                      12.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                child:
                                                                    CommonImageView(
                                                                  imagePath:
                                                                      favDoctorsList[
                                                                              index]
                                                                          .img,
                                                                  height:
                                                                      getSize(
                                                                    100.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    100.00,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              HorizontalSpace(
                                                                  width: 20),
                                                              Expanded(
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              10,
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              favDoctorsList[index].name,
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
                                                                                  Padding(
                                                                                    padding: getPadding(
                                                                                      top: 2,
                                                                                      bottom: 2,
                                                                                    ),
                                                                                    child: Text(
                                                                                      "4.9 (3821 reviews)",
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
                                                                            ),
                                                                            Padding(
                                                                              padding: getPadding(
                                                                                top: 3,
                                                                              ),
                                                                              child: Text(
                                                                                favDoctorsList[index].specialization,
                                                                                overflow: TextOverflow.ellipsis,
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
                                                                    Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              20,
                                                                          right:
                                                                              20),
                                                                      padding:
                                                                          getPadding(
                                                                              all: 10),
                                                                      height:
                                                                          getVerticalSize(
                                                                              44),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              44),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12),
                                                                        color: ColorConstant
                                                                            .blueA400
                                                                            .withOpacity(0.1),
                                                                      ),
                                                                      child:
                                                                          CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant.favorite,
                                                                        color: ColorConstant
                                                                            .bluedark,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 24,
                                                            top: 28,
                                                            right: 24,
                                                          ),
                                                          child: Text(
                                                            "Remove from favorite?",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                              color: isDark
                                                                  ? Colors.white
                                                                  : ColorConstant
                                                                      .bluegray800,
                                                              fontSize:
                                                                  getFontSize(
                                                                16,
                                                              ),
                                                              fontFamily:
                                                                  'Source Sans Pro',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 24,
                                                            top: 40,
                                                            right: 24,
                                                            bottom: 48,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              CustomButton(
                                                                isDark: isDark,
                                                                width: 184,
                                                                text: "Cancel",
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBlueA400,
                                                                onTap: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                              ),
                                                              CustomButton(
                                                                isDark: isDark,
                                                                width: 184,
                                                                text:
                                                                    "Yes, Remove",
                                                                onTap: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                  setState(() {
                                                                    favDoctorsList
                                                                        .removeAt(
                                                                            index);
                                                                  });
                                                                },
                                                                margin:
                                                                    getMargin(
                                                                  left: 12,
                                                                ),
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .SourceSansProSemiBold18,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Container(
                                          margin:
                                              getMargin(left: 20, right: 20),
                                          padding: getPadding(all: 10),
                                          height: getVerticalSize(44),
                                          width: getHorizontalSize(44),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: ColorConstant.blueA400
                                                .withOpacity(0.1),
                                          ),
                                          child: CommonImageView(
                                            imagePath: ImageConstant.favorite,
                                            color: ColorConstant.bluedark,
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
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  List<DoctorsModel> favDoctorsList = [
    DoctorsModel(
        img: ImageConstant.doctor1,
        name: "Dr. Ralph Edwards",
        shortSpecialization: 'Cardio Specialist',
        specialization: "Cardio Specialist -  Ramsay College  Hospital"),
    DoctorsModel(
        img: ImageConstant.doctor2,
        name: "Dr. Jane Cooper",
        shortSpecialization: 'Cardio Specialist',
        specialization: "Cardio Specialist -  Nanyang Hospital"),
    DoctorsModel(
        img: ImageConstant.doctor3,
        shortSpecialization: 'Cardio Specialist',
        name: "Dr. Dianne Russell",
        specialization: "Cardio Specialist -  Porcini Spec Hospital"),
    DoctorsModel(
        img: ImageConstant.doctor4,
        shortSpecialization: 'Cardio Specialist',
        name: "Dr. Albert Flores",
        specialization: "Cardio Specialist -  Bracket Medical London Hospital"),
  ];
}
