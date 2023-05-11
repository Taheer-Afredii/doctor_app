import 'package:doctorq/View/PATIENTSIDEAPP/light_splash_screen/light_splash_screen.dart';
import 'package:doctorq/core/Providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'core/theme/theme_constants.dart';
import 'core/theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
      // EasyLocalization(
      //   supportedLocales: [Locale("en"), Locale("ar")],
      //   path: "assets/translations",
      //   assetLoader: CodegenLoader(),
      //   fallbackLocale: Locale('en'),
      MyApp());
}

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
// TODO: implement initState

    themeManager.addListener(themeListener);

    super.initState();
  }

  @override
  void dispose() {
// TODO: implement dispose

    themeManager.removeListener(themeListener);

    super.dispose();
  }

  void themeListener() {
    if (mounted) setState(() {});
  }

  static const double _designWidth = 428;
  static const double _designHeight = 926;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: ScreenUtilInit(
        designSize: Size(_designWidth, _designHeight),
        builder: (context, widget) => GetMaterialApp(
          title: 'DoctorQ',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: Provider.of<ThemeManager>(context).themeMode,
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          // locale: ,
          home: LightSplashScreen(),
        ),
      ),
    );
  }
}
