import 'package:doctorq/View/PATIENTSIDEAPP/patient_appointments_book_screen/patient_appointments_book_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Autolayouthor1ItemWidget extends StatelessWidget {
  int index;
  Autolayouthor1ItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                builder: (context) => PatientAppointmentsBookScreen(
                      doctor: doctorList[index],
                    )));
          },
          child: Container(
            width: getHorizontalSize(160),
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
                color:
                    isDark ? ColorConstant.darkLine : ColorConstant.bluegray50,
                width: getHorizontalSize(
                  1.00,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: doctorList[index].img,
                    height: getSize(
                      160.00,
                    ),
                    width: getHorizontalSize(160),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 12,
                    right: 8,
                  ),
                  child: Text(
                    doctorList[index].name,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 11,
                    right: 8,
                    bottom: 14,
                  ),
                  child: Text(
                    doctorList[index].shortSpecialization,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
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
        ),
      ),
    );
  }
}
