import 'package:doctorq/View/PatientSideApp/light_appointments_review_screen/widgets/listcameronwilliam_item_widget.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightAppointmentsReviewScreen extends StatefulWidget {
  @override
  State<LightAppointmentsReviewScreen> createState() =>
      _LightAppointmentsReviewScreenState();
}

class _LightAppointmentsReviewScreenState
    extends State<LightAppointmentsReviewScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              BkBtn(),
                              HorizontalSpace(width: 20),
                              Text(
                                "Reviews",
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
                            ],
                          ),
                          //  Container(

                          //     padding: getPadding(all: 10),
                          //     height: getVerticalSize(44),
                          //     width: getHorizontalSize(44),
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(12),
                          //       color: ColorConstant.blueA400.withOpacity(0.1),

                          //     ),
                          //     child: CommonImageView(
                          //       imagePath:ImageConstant.filter,
                          //     ),

                          //   ),
                        ],
                      ),
                    ),
                  ),
                ),
                VerticalSpace(height: 20),
                Container(
                  height: getVerticalSize(36),
                  child: TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    controller: tabController,
                    onTap: (index) {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    tabs: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: selectIndex == 0
                              ? ColorConstant.blueA400
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: selectIndex == 0
                                ? ColorConstant.blueA400
                                : ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Tab(
                          text: '☆ All',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selectIndex == 1
                              ? ColorConstant.blueA400
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: selectIndex == 1
                                ? ColorConstant.blueA400
                                : ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Tab(
                          text: '☆ 1',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selectIndex == 2
                              ? ColorConstant.blueA400
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: selectIndex == 2
                                ? ColorConstant.blueA400
                                : ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Tab(
                          text: '☆ 2',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selectIndex == 3
                              ? ColorConstant.blueA400
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: selectIndex == 3
                                ? ColorConstant.blueA400
                                : ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Tab(
                          text: '☆ 3',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selectIndex == 4
                              ? ColorConstant.blueA400
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: selectIndex == 4
                                ? ColorConstant.blueA400
                                : ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Tab(
                          text: '☆ 4',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selectIndex == 5
                              ? ColorConstant.blueA400
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: selectIndex == 5
                                ? ColorConstant.blueA400
                                : ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Tab(
                          text: '☆ 5',
                        ),
                      ),
                    ],
                    isScrollable: true,
                    indicator: BoxDecoration(),
                    padding: getPadding(left: 10, right: 40),
                    // indicator: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50),
                    //     color: ColorConstant.blueA400),
                    unselectedLabelColor: ColorConstant.blueA400,
                    unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(16),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Source Sans Pro'),
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                        fontSize: getFontSize(16),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
                Container(
                  height: size.height - getVerticalSize(240),
                  child: TabBarView(
                    controller: tabController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListView.builder(
                        padding: getPadding(
                          left: 20,
                          top: 24,
                          right: 20,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListcameronwilliamItemWidget();
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          left: 10,
                          top: 24,
                          right: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListcameronwilliamItemWidget();
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          left: 10,
                          top: 24,
                          right: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListcameronwilliamItemWidget();
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          left: 10,
                          top: 24,
                          right: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListcameronwilliamItemWidget();
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          left: 10,
                          top: 24,
                          right: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListcameronwilliamItemWidget();
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          left: 10,
                          top: 24,
                          right: 10,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListcameronwilliamItemWidget();
                        },
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "Back",
                  margin: getMargin(
                    left: 10,
                    right: 10,
                    bottom: 20,
                  ),
                  prefixWidget: Padding(
                    padding: getPadding(left: 8, right: 8),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: ColorConstant.blueA400,
                      size: 18,
                    ),
                  ),
                  variant: ButtonVariant.OutlineBlueA400,
                  alignment: Alignment.center,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
