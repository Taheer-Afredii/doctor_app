// import 'package:doctorq/Widget/Patientwidgets/custom_switch.dart';
// import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
// import 'package:doctorq/core/app_export.dart';
// import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
// import 'package:doctorq/core/utils/size_utils.dart';
// import 'package:doctorq/main.dart';
// import 'package:flutter/material.dart';

// class LightProfileSettingsAppearanceScreen extends StatefulWidget {
//   @override
//   State<LightProfileSettingsAppearanceScreen> createState() =>
//       _LightProfileSettingsAppearanceScreenState();
// }

// class _LightProfileSettingsAppearanceScreenState
//     extends State<LightProfileSettingsAppearanceScreen> {
//   bool switchVal2 = true;
//   bool switchVal3 = true;
//   @override
//   Widget build(BuildContext context) {
//     bool isDark = Theme.of(context).brightness == Brightness.dark;
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Container(
//               width: size.width,
//               margin: getMargin(
//                 top: 36,
//               ),
//               child: Padding(
//                 padding: getPadding(
//                   left: 24,
//                   right: 24,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     BkBtn(),
//                     HorizontalSpace(width: 20),
//                     Text(
//                       "Appearance",
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontSize: getFontSize(
//                           26,
//                         ),
//                         fontFamily: 'Source Sans Pro',
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: getPadding(
//                     top: 31,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Align(
//                         alignment: Alignment.center,
//                         child: Padding(
//                           padding: getPadding(
//                             left: 24,
//                             right: 24,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding: getPadding(
//                                   top: 8,
//                                   bottom: 7,
//                                 ),
//                                 child: Text(
//                                   "Dark Mode",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.start,
//                                   style: TextStyle(
//                                     fontSize: getFontSize(
//                                       16,
//                                     ),
//                                     fontFamily: 'Source Sans Pro',
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               CustomSwitch(
//                                 value: themeManager.themeMode == ThemeMode.dark,
//                                 onChanged: (value) {
//                                   setState(() {});
//                                   themeManager.toggleTheme(value);
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: getVerticalSize(
//                           1.00,
//                         ),
//                         margin: getMargin(
//                           left: 24,
//                           top: 10,
//                           bottom: 10,
//                           right: 24,
//                         ),
//                         child: CustomDivider(isDark: isDark),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           setState(() {
//                             switchVal2 = !switchVal2;
//                           });
//                         },
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Padding(
//                             padding: getPadding(
//                               left: 24,
//                               top: 10,
//                               bottom: 10,
//                               right: 24,
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: getPadding(
//                                     top: 10,
//                                     bottom: 5,
//                                   ),
//                                   child: Text(
//                                     "Blur Background",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.start,
//                                     style: TextStyle(
//                                       fontSize: getFontSize(
//                                         16,
//                                       ),
//                                       fontFamily: 'Source Sans Pro',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                                 CustomSwitch(
//                                   value: switchVal2,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       switchVal2 = !switchVal2;
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: getVerticalSize(
//                           1.00,
//                         ),
//                         margin: getMargin(
//                           left: 24,
//                           top: 10,
//                           bottom: 10,
//                           right: 24,
//                         ),
//                         child: CustomDivider(isDark: isDark),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           setState(() {
//                             switchVal3 = !switchVal3;
//                           });
//                         },
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Padding(
//                             padding: getPadding(
//                               left: 24,
//                               top: 10,
//                               bottom: 10,
//                               right: 24,
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: getPadding(
//                                     top: 8,
//                                     bottom: 7,
//                                   ),
//                                   child: Text(
//                                     "Full Screen Mode",
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.start,
//                                     style: TextStyle(
//                                       fontSize: getFontSize(
//                                         16,
//                                       ),
//                                       fontFamily: 'Source Sans Pro',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                                 CustomSwitch(
//                                   value: switchVal3,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       switchVal3 = !switchVal3;
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
