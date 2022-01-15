
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../homepage.dart';
import 'bottom_nav_item.dart';

Widget buildBottomNavBar(int currIndex, Size size, ) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(topRight: Radius.circular(30),
    topLeft: Radius.circular(30)),
    child: BottomNavigationBar(


      iconSize: size.width * 0.07,
      elevation: 0,
      selectedLabelStyle: const TextStyle(fontSize: 0),
      unselectedLabelStyle: const TextStyle(fontSize: 0),
      currentIndex: currIndex,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      selectedItemColor:  Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (value) {
        if (value != currIndex) {
          if (value == 1) {
            Get.off(const Homepage());
          }
        }
      },
      items: [
        buildBottomNavItem(
          UniconsLine.apps,

          size,
        ),

        buildBottomNavItem(
          UniconsLine.search,

          size,
        ),
        buildBottomNavItem(
          UniconsLine.envelope_bookmark,

          size,
        ),
      ],
    ),
  );
}
