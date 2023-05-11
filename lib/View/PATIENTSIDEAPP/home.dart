import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/history_screen/history_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_list_upcoming_tab_container_screen/light_appointments_list_upcoming_tab_container_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_home_screen/light_home_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_profile_settings_screen/light_profile_settings_screen.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  List<Widget> _buildScreens() {
    return [
      LightHomeScreen(),
      LightAppointmentsListUpcomingTabContainerScreen(),
      HistoryScreen(),
      LightProfileSettingsScreen(),
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
          ImageConstant.eventNote,
          color: ColorConstant.blueA400,

          // width: getHorizontalSize(26),
          // height: getVerticalSize(26),
        ),
        inactiveIcon: Image.asset(
          ImageConstant.inActiveEventNote,
          width: getHorizontalSize(33),
          color: ColorConstant.blueA400,
          height: getVerticalSize(33),
        ),
        title: ("Appointment"),
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

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),

      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: isDark
          ? ColorConstant.darkBg
          : Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        border: Border.all(
          color: isDark ? ColorConstant.darkLine : ColorConstant.lightLine,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
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
