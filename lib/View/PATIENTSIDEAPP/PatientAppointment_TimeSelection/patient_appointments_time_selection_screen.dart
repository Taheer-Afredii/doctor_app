import 'package:doctorq/View/DOCTORSIDEAPP/DateAndTimeSelection/dateandtimeselection_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/PatientAppointment_TimeSelection/patient_appointments_time_selection_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_AppointmentBooking_Details/patient_appointmentbooking_details.dart';
import 'package:doctorq/View/TestEnumFile.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PatientAppointmentTimeSelectionScreen extends StatefulWidget {
  @override
  State<PatientAppointmentTimeSelectionScreen> createState() =>
      _PatientAppointmentTimeSelectionScreenState();
}

class _PatientAppointmentTimeSelectionScreenState
    extends State<PatientAppointmentTimeSelectionScreen> {
  bool isMorning = true;
  int selectedTime = 0;
  CallType? callTypes;

  List<String> availableTimesList = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '13:00 PM',
    '14:00 PM',
    '15:00 PM',
    '16:00 PM',
    '17:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    PatientAppointmentTimeSelectionViewModel model =
        Provider.of<PatientAppointmentTimeSelectionViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.h),
              AppHeadingRow(
                text: "Set Date and Timing",
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  PatientMorningEveningContainer(
                    text: "Morning",
                    icon: Icons.wb_sunny,
                    onPressed: () {
                      model.setTimeofDay("Morning");
                    },
                  ),
                  SizedBox(width: 10.w),
                  PatientMorningEveningContainer(
                    text: "Evening",
                    icon: Icons.wb_incandescent,
                    onPressed: () {
                      model.setTimeofDay("Evening");
                    },
                  ),
                ],
              ),
              SizedBox(height: 35.h),
              kText(
                text: "Choose the Hour",
                fontSize: 14.sp,
                color: const Color(0xff2C3A4B),
              ),
              SizedBox(height: 16.h),
              GridView.builder(
                shrinkWrap: true,
                itemCount: model.hours.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: model.hours.length / 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      model.onTap(index);
                    },
                    child: HourSelectionContainer(
                      text: model.hours[index],
                      textColor:
                          model.isSelected(index) ? Colors.white : blueColor,
                      color: model.isSelected(index) ? blueColor : Colors.white,
                    ),
                  );
                },
              ),
              SizedBox(height: 24.h),
              kText(
                  text: "Fee Information",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorConstant.bluegray800),
              SizedBox(height: 16.h),
              VoiceVideoCallContainer(
                onTap: () {
                  model.setVoiceCall(true);
                },
                description: "Can make a voice call with doctor",
                callType: "Voice Call",
                iconimage: ImageConstant.call,
                price: "10",
                color:
                    model.voiceCall ? fromHex("#B2E2FF") : Colors.transparent,
              ),
              SizedBox(height: 24.h),
              VoiceVideoCallContainer(
                onTap: () {
                  model.setVideoCall(true);
                },
                description: "Can make a video call with doctor",
                callType: "video Call",
                iconimage: ImageConstant.videocam,
                price: "20",
                color:
                    model.videoCall ? fromHex("#B2E2FF") : Colors.transparent,
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                isDark: isDark,
                width: size.width,
                text: "Next",
                margin: getMargin(
                  left: 20,
                  right: 20,
                  bottom: 10,
                  top: 10,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PatientAppointmentBookingDetails()),
                  );
                },
                fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VoiceVideoCallContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String callType;
  final String description;
  final String price;
  final String iconimage;
  final Color color;

  const VoiceVideoCallContainer({
    super.key,
    required this.onTap,
    required this.callType,
    required this.description,
    required this.price,
    required this.iconimage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: getPadding(left: 20.w, right: 20.w, top: 16.h, bottom: 16.h),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: ColorConstant.lightLine),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIconButton(
                  // isRtl: isRtl,
                  height: 56,
                  width: 56,
                  variant: IconButtonVariant.FillBlueA40019,
                  shape: IconButtonShape.RoundedBorder28,
                  padding: IconButtonPadding.PaddingAll16,
                  child: CommonImageView(
                    imagePath: iconimage,
                    color: ColorConstant.blueA400,
                  ),
                ),
                HorizontalSpace(width: 16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    kText(text: callType, fontSize: 17.sp),
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: kText(
                          text: description,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            kText(
              text: "${Constants.currency}$price",
              color: ColorConstant.blueA400,
              fontSize: 22.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class PatientMorningEveningContainer extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final IconData? icon;
  const PatientMorningEveningContainer(
      {super.key, this.onPressed, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    PatientAppointmentTimeSelectionViewModel model =
        Provider.of<PatientAppointmentTimeSelectionViewModel>(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 184.w,
        height: 43.h,
        decoration: BoxDecoration(
          color: model.timeofDay == text ? blueColor : Colors.white,
          border: Border.all(color: blueColor, width: 2.w),
          borderRadius: BorderRadius.all(
            Radius.circular(24.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon ?? Icons.wb_sunny,
              size: 20.sp,
              color: model.timeofDay == text ? Colors.white : blueColor,
            ),
            SizedBox(width: 8.w),
            kText(
                text: text ?? "Morning",
                fontSize: 18.sp,
                color: model.timeofDay == text ? Colors.white : blueColor)
          ],
        ),
      ),
    );
  }
}
