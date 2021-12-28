// ignore_for_file: prefer_const_constructors

import 'package:booking_app/common/view_single_propotor.dart';
import 'package:booking_app/screens/admin_screen.dart';
import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/live_screen.dart';
import 'package:booking_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyBookingApp());
}

class MyBookingApp extends StatelessWidget {
  const MyBookingApp({ int selectedRoute = 0, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      initialRoute: AppLinks.HOME,
      getPages: AppRoutes.pages,
    );
  }
}

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppLinks.HOME,
      page: () => HomeScreen()
    ),
    GetPage(
      name: AppLinks.VIEWSINGLEPROMOTEUR,
      page: () => ViewSinglePromotor()
    ),
    GetPage(
      name: AppLinks.LIVE,
      page: () => LiveScreen()
    ),
    GetPage(
      name: AppLinks.LOGIN,
      page: () => LoginScreen()
    ),
    GetPage(
      name: AppLinks.ADMIN,
      page: () => AdminScreen()
    ),
  ];
}

class AppLinks {
  static const String HOME = "/";
  static const String VIEWSINGLEPROMOTEUR = "/singlePromotor";
  static const String LOGIN = "/login";
  static const String LIVE = "/live";
  static const String ADMIN = "/admin";
}