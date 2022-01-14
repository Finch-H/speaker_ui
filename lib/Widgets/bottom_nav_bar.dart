
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../homepage.dart';
import 'bottom_nav_item.dart';

Widget buildBottomNavBar(int currIndex, Size size, ) {
  return BottomNavigationBar(
    iconSize: size.width * 0.07,
    elevation: 0,
    selectedLabelStyle: const TextStyle(fontSize: 0),
    unselectedLabelStyle: const TextStyle(fontSize: 0),
    currentIndex: currIndex,
    backgroundColor: const Color(0x00ffffff),
    type: BottomNavigationBarType.fixed,
    selectedItemColor:  Colors.black,
    unselectedItemColor: Colors.black,
    onTap: (value) {
      if (value != currIndex) {
        if (value == 1) {
          Get.off(const Homepage());
        }
      }
    },
    items: [
      buildBottomNavItem(
        UniconsLine.bell,

        size,
      ),
      buildBottomNavItem(
        UniconsLine.map_marker,

        size,
      ),
      buildBottomNavItem(
        UniconsLine.user,

        size,
      ),
      buildBottomNavItem(
        UniconsLine.apps,

        size,
      ),
    ],
  );
}
