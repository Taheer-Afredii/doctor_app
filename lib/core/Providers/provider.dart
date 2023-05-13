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
import 'package:doctorq/View/PATIENTSIDEAPP/light_appointments_book_screen/appointment_book_screen_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/patient_profile_blank_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_reset_password_screen/reset_password_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_sign_up_blank_screen/patient_sign_up_viewmodel.dart';
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
  ChangeNotifierProvider(create: (_) => AppointmentBookScreenViewModel()),
  ChangeNotifierProvider(create: (_) => PatientProfileBlankViewmodel()),
  ChangeNotifierProvider(create: (_) => ResetPasswordViewmodel()),
];
