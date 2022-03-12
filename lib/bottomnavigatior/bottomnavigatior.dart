import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:webapp_project/addcar.dart';
import 'package:webapp_project/appraisecar.dart';
import 'package:webapp_project/home.dart';

import '../carforsale.dart';
import '../profile.dart';

class BottomNaviagtion extends StatelessWidget {
  PersistentTabController? controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      CarforSale(),
      AddaCar(),
      AppraiseCar(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 20.h,
        inactiveIcon: SvgPicture.asset(
          "images/home.svg",
          color: Colors.grey,
          height: 20.h,
        ),
        icon: SvgPicture.asset(
          "images/home.svg",
          height: 20.h,
        ),
        title: ("Home"),
        activeColorPrimary: const Color(0xffff9503),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        inactiveColorSecondary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        iconSize: 20.h,
        inactiveIcon: SvgPicture.asset(
          "images/saleicon.svg",
          color: Colors.grey,
          height: 20.h,
        ),
        icon: SvgPicture.asset(
          "images/saleicon.svg",
          height: 20.h,
          color: Colors.white,
        ),
        title: ("Car for Sale"),
        activeColorPrimary: const Color(0xffff9503),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        iconSize: 20.h,
        inactiveIcon: SvgPicture.asset(
          "images/addcar.svg",
          color: Colors.grey,
          height: 20.h,
        ),
        icon: SvgPicture.asset(
          "images/addcar.svg",
          color: Colors.white,
          height: 20.h,
        ),
        title: ("Add Car"),
        activeColorPrimary: const Color(0xffff9503),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "images/appraisecar.svg",
          color: Colors.grey,
          height: 20.h,
        ),
        icon: SvgPicture.asset(
          "images/appraisecar.svg",
          height: 20.h,
          color: Colors.white,
        ),
        title: ("Appraisal my car"),
        activeColorPrimary: const Color(0xffff9503),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          "images/user.svg",
          color: Colors.grey,
          height: 20.h.h,
        ),
        icon: SvgPicture.asset(
          "images/user.svg",
          height: 20.h,
          color: Colors.white,
        ),
        title: ("Profile"),
        activeColorPrimary: const Color(0xffff9503),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: CupertinoColors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
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
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 20),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 20),
      ),
      navBarStyle:
          NavBarStyle.style10, // Choose the nav bar style with this property.
    );
  }
}
