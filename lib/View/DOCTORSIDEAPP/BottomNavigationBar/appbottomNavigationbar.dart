import 'package:doctorq/View/DOCTORSIDEAPP/AppointmentScreen/appointment_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/HistoryScreen/history_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/Notification/notification_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profilesetting_screen.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// const AppointmentScreen(),
// const NotificationScreen(),
// const HistoryScreen(),
// const ProfileScreen()

class AppBottomNavigationBar extends StatelessWidget {
  AppBottomNavigationBar({super.key});

  List<Widget> _buildScreens() {
    return [
      const AppointmentScreen(),
      const NotificationScreen(),
      const HistoryScreen(),
      const ProfileSettingScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          ImageConstant.home,
          color: ColorConstant.blueA400,
        ),
        inactiveIcon: Image.asset(
          ImageConstant.inActiveHome,
          color: ColorConstant.blueA400,
          width: getHorizontalSize(30),
          height: getVerticalSize(30),
        ),
        title: ("Home"),
        activeColorSecondary: ColorConstant.blueA400,
        activeColorPrimary: ColorConstant.blueA400.withOpacity(0.1),
        inactiveColorPrimary: ColorConstant.blueA400,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          ImageConstant.notifications,
          color: ColorConstant.blueA400,

          // width: getHorizontalSize(26),
          // height: getVerticalSize(26),
        ),
        inactiveIcon: Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorConstant.blueA400.withOpacity(0.1),
          ),
          child: Icon(
            Icons.notifications,
            color: ColorConstant.blueA400,
            size: 16.sp,
          ),
        ),
        title: ("Notification"),
        activeColorSecondary: ColorConstant.blueA400,
        activeColorPrimary: ColorConstant.blueA400.withOpacity(0.1),
        inactiveColorPrimary: ColorConstant.blueA400,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          ImageConstant.history,
          color: ColorConstant.blueA400,
          // width: getHorizontalSize(26),
          // height: getVerticalSize(26),
        ),
        inactiveIcon: Image.asset(
          ImageConstant.inActiveHistory,
          color: ColorConstant.blueA400,
          width: getHorizontalSize(30),
          height: getVerticalSize(30),
        ),
        title: ("History"),
        activeColorSecondary: ColorConstant.blueA400,
        activeColorPrimary: ColorConstant.blueA400.withOpacity(0.1),
        inactiveColorPrimary: ColorConstant.blueA400,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          ImageConstant.person,
          color: ColorConstant.blueA400,
          // width: getHorizontalSize(26),
          // height: getVerticalSize(26),
        ),
        inactiveIcon: Image.asset(
          ImageConstant.inActivePerson,
          color: ColorConstant.blueA400,
          width: getHorizontalSize(30),
          height: getVerticalSize(30),
        ),
        title: ("Profile"),
        activeColorSecondary: ColorConstant.blueA400,
        activeColorPrimary: ColorConstant.blueA400.withOpacity(0.1),
        inactiveColorPrimary: ColorConstant.blueA400,
      ),
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),

      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        border: Border.all(
          color: ColorConstant.lightLine,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),

      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
      navBarHeight: getVerticalSize(70),
    );
  }
}
