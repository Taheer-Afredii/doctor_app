import 'package:doctorq/View/PATIENTSIDEAPP/light_home_favorite_doctor_screen/widgets/favourite_doctor_maincontainer.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_home_favorite_doctor_screen/widgets/favourite_empty_container.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/patient_appointments_book_screen/patient_appointments_book_screen.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';

import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/data/doctors_list.dart';
import 'package:doctorq/models/doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 28.h),
              AppHeadingRow(
                text: "Favorite Doctors",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: favDoctorsList.length == 0
                    ? FavouriteEmptyContainer()
                    : ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: favDoctorsList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigateToScreen(
                                  context,
                                  PatientAppointmentsBookScreen(
                                      doctor: doctorList[index]));
                            },
                            child: FavouriteDoctorMainContainer(
                              isDark: isDark,
                              isRtl: isRtl,
                              favDoctorsList: favDoctorsList,
                              index: index,
                              navigateToScreenTap: () {},
                              bootomSheetYesOnTap: () {},
                              bootomSheetCancelOnTap: () {},
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
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
