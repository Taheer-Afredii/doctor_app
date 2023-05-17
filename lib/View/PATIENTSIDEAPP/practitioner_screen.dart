import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:flutter/material.dart';

import 'Patient_Home_Top_Doctor/widgets/listfullname3_item_widget.dart';

class PractitionerScreen extends StatefulWidget {
  final String name;
  final int index;
  PractitionerScreen({required this.name, required this.index});
  @override
  State<PractitionerScreen> createState() => _PractitionerScreenState();
}

class _PractitionerScreenState extends State<PractitionerScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 7, vsync: this);
  }

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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BkBtn(),
                          HorizontalSpace(width: 20),
                          Text(
                            widget.name,
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
                    ],
                  ),
                ),
              ),
              VerticalSpace(height: 24),
              Container(
                height: size.height - getVerticalSize(192),
                child: ListView.builder(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
