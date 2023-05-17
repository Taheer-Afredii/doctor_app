import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/AppointmentScreen/appointment_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/DateAndTimeSelection/dateandtimeselection_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/HistoryScreen/historyscreen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/AppearanceSetting/appearance_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/NotificationSetting/notification_screen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SecuritySetting/security_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SetPriceSetting/set_price_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SetTimeSetting/settime_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profilesettingscreen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SetPricingScreen/setpricingviewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignInScreen/signinscreen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignupScreen/signupscreen_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/PatientAppointment_TimeSelection/patient_appointments_time_selection_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Appointment_screen/patient_appointment_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_History_Screen/patient_history_screen_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_appointments_list_upcoming_page/doctor_appoint_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_home_favorite_doctor_screen/favourite_doctor_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/patient_profile_blank_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_reset_password_screen/reset_password_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_sign_up_blank_screen/patient_sign_up_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/patient_appointments_book_screen/patient_appointment_book_screen_viewmodel.dart';
import 'package:doctorq/core/theme/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => ThemeManager()),
  ChangeNotifierProvider(create: (_) => SignInScreenViewModel()),
  ChangeNotifierProvider(create: (_) => SignUpScreenViewModel()),
  ChangeNotifierProvider(create: (_) => PatientSignInViewModel()),
  // ChangeNotifierProvider(create: (_) => PatientSideSignUpViewModel()),
  ChangeNotifierProvider(create: (_) => AddProfileScreenViewModel()),
  ChangeNotifierProvider(create: (_) => DateAndTimeSelectionViewModel()),
  ChangeNotifierProvider(create: (_) => SetPricingViewModel()),
  ChangeNotifierProvider(create: (_) => AppointmentViewModel()),
  ChangeNotifierProvider(create: (_) => HistoryScreenViewmodel()),
  ChangeNotifierProvider(create: (_) => ProfileSettingScreenViewModel()),
  ChangeNotifierProvider(create: (_) => NotificationSettingScreenViewModel()),
  ChangeNotifierProvider(create: (_) => SecuritySettingViewModel()),
  ChangeNotifierProvider(create: (_) => AppearanceSettingViewModel()),
  ChangeNotifierProvider(create: (_) => SetTimeSettingViewModel()),
  ChangeNotifierProvider(create: (_) => SetPriceSettingViewModel()),
  ChangeNotifierProvider(
      create: (_) => PatientAppointmentBookScreenViewModel()),
  ChangeNotifierProvider(create: (_) => PatientProfileBlankViewmodel()),
  ChangeNotifierProvider(create: (_) => ResetPasswordViewmodel()),
  ChangeNotifierProvider(create: (_) => FavouriteDoctorViewModel()),
  ChangeNotifierProvider(create: (_) => DoctorAppointViewModel()),
  ChangeNotifierProvider(
      create: (_) => PatientAppointmentTimeSelectionViewModel()),
  ChangeNotifierProvider(create: (_) => PatientAppointmentViewmodel()),
  ChangeNotifierProvider(create: (_) => PatientHistoryScreenViewModel()),
];
