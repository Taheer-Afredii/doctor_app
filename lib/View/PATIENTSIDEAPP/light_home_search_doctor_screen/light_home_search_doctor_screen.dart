import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_search_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../light_home_search_doctor_screen/widgets/listfullname1_item_widget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';

class LightHomeSearchDoctorScreen extends StatefulWidget {
  @override
  State<LightHomeSearchDoctorScreen> createState() =>
      _LightHomeSearchDoctorScreenState();
}

class _LightHomeSearchDoctorScreenState
    extends State<LightHomeSearchDoctorScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController autoLayoutVerController = TextEditingController();
  TabController? tabController;
  int selectIndex = 0;
  @override
  void initState() {
    //
    super.initState();
    tabController = tabController = TabController(length: 8, vsync: this);
    autoLayoutVerController.text = 'Dr.';
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
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
                top: 20,
              ),
              child: Padding(
                padding: getPadding(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BkBtn(),
                    HorizontalSpace(width: 20),
                    Expanded(
                      child: CustomSearchView(
                        isDark: isDark,
                        width: size.width,
                        // focusNode: FocusNode(canRequestFocus: false),
                        controller: autoLayoutVerController,
                        hintText: "Search",
                        alignment: Alignment.center,
                        suffix: Padding(
                            padding: EdgeInsets.only(
                                right: getHorizontalSize(
                                  15.00,
                                ),
                                left: getHorizontalSize(15)),
                            child: CommonImageView(
                              imagePath: ImageConstant.search,
                            )),
                        suffixConstraints: BoxConstraints(
                          maxWidth: getHorizontalSize(
                            50.00,
                          ),
                          maxHeight: getVerticalSize(
                            50.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            VerticalSpace(height: 24),
            Container(
              //color: Colors.red,
              height: getVerticalSize(36),
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 8.w),
                controller: tabController,
                onTap: (index) {
                  setState(() {
                    selectIndex = index;
                  });
                },
                //  indicatorSize: TabBarIndicatorSize.,
                tabs: [
                  Container(
                    height: 50,
                    width: 60,
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
                      text: 'All',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
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
                      text: 'Chinese medicine',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
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
                      text: ' Ayurvedic',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 70,
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
                      text: 'Nutrition',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
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
                      text: 'Physical Therapy',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
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
                      text: 'Qi Gong / Sundo',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: selectIndex == 6
                          ? ColorConstant.blueA400
                          : ColorConstant.whiteA700,
                      border: Border.all(
                        color: selectIndex == 6
                            ? ColorConstant.blueA400
                            : ColorConstant.blueA400,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Tab(
                      text: 'Eastern Philosophy',
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: selectIndex == 7
                          ? ColorConstant.blueA400
                          : ColorConstant.whiteA700,
                      border: Border.all(
                        color: selectIndex == 7
                            ? ColorConstant.blueA400
                            : ColorConstant.blueA400,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Tab(
                      text: 'Mental Health',
                    ),
                  ),
                ],
                isScrollable: true,
                padding: EdgeInsets.zero,
                indicator: BoxDecoration(),
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(50),
                //     border: Border.all(color: ColorConstant.blueA400)),
                unselectedLabelColor: ColorConstant.blueA400,
                unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(16),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Source Sans Pro'),
                labelColor: ColorConstant.whiteA700,
                labelStyle: TextStyle(
                    fontSize: getFontSize(16),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
            Container(
              height: size.height - getVerticalSize(200),
              //color: Colors.red,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
                  ),
                  ListView.builder(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: 34,
                    ),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doctorList.length,
                    itemBuilder: (context, index) {
                      return Listfullname1ItemWidget(index: index);
                    },
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
