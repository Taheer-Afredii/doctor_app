import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Home_Top_Doctor/widgets/listfullname3_item_widget.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientHomeTopDoctorScreen extends StatefulWidget {
  @override
  State<PatientHomeTopDoctorScreen> createState() =>
      _PatientHomeTopDoctorScreenState();
}

class _PatientHomeTopDoctorScreenState extends State<PatientHomeTopDoctorScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 8, vsync: this);
  }

  int selectIndex = 0;
  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 24.h),
                AppHeadingRow(text: "Top Doctor"),
                VerticalSpace(height: 24),
                Container(
                  height: getVerticalSize(36),
                  child: TabBar(
                    controller: tabController,
                    onTap: (index) {
                      setState(() {
                        selectIndex = index;
                      });
                      print(index);
                    },
                    tabs: [
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        text: "All",
                        index: 0,
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 1,
                        text: "Chinese medicine",
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 2,
                        text: "Ayurvedic",
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 3,
                        text: "Nutrition",
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 4,
                        text: "Physical Therapy",
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 5,
                        text: "Qi Gong / Sundo",
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 6,
                        text: "Eastern Philosophy",
                      ),
                      TopDoctorTabContainer(
                        selectIndex: selectIndex,
                        index: 7,
                        text: "Mental Health",
                      ),
                    ],
                    isScrollable: true,
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
                          top: 24,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          top: 24,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          top: 24,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          top: 24,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          top: 24,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          top: 24,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                      ListView.builder(
                        padding: getPadding(
                          right: 20,
                          bottom: 34,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          return Listfullname3ItemWidget(index: index);
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
                          return Listfullname3ItemWidget(index: index);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopDoctorTabContainer extends StatelessWidget {
  const TopDoctorTabContainer({
    super.key,
    required this.selectIndex,
    required this.text,
    required this.index,
  });

  final int selectIndex;
  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: selectIndex == index
            ? ColorConstant.blueA400
            : ColorConstant.whiteA700,
        border: Border.all(
          color: selectIndex == index
              ? ColorConstant.blueA400
              : ColorConstant.blueA400,
          width: 2.w,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Tab(
          text: text,
        ),
      ),
    );
  }
}
