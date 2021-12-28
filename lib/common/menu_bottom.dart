// ignore_for_file: prefer_const_constructors

import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/live_screen.dart';
import 'package:booking_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';

class MenuBottom extends StatelessWidget {
  int selectedPage = 0;
  MenuBottom({this.selectedPage = 0, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ConvexAppBar(
      
      items: [
        TabItem(icon: Icons.home_sharp, title: 'Home'),
        TabItem(icon: Icons.search_sharp, title: 'Search'),
        TabItem(icon: Icons.play_circle_sharp, title: 'Live'),
        TabItem(icon: Icons.account_circle_sharp, title: 'Login'),
      ],

      initialActiveIndex: selectedPage,

      onTap: (int index) {
        switch (index) {
          case 0:
            Get.off(HomeScreen());
            break;
          case 1:
            Get.off(HomeScreen(selectedPage:1));
            break;
          case 2:
            Get.off(LiveScreen());
            break;
          case 3:
            Get.to(LoginScreen());
            break;
        }
        selectedPage = 0;
      },

      backgroundColor: Colors.indigo

    );
  }
  
}