// ignore_for_file: prefer_const_constructors

import 'package:booking_app/common/view_all_promotor.dart';
import 'package:booking_app/common/carousel.dart';
import 'package:booking_app/common/menu_appbar.dart';
import 'package:booking_app/common/menu_bottom.dart';
import 'package:booking_app/common/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  int selectedPage;
  HomeScreen({ this.selectedPage = 0, Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState(selectedNumber: selectedPage);
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedNumber;
  _HomeScreenState({ this.selectedNumber = 0});
  
  List imageList = [
    'images/carousel1.jpg',
    'images/carousel2.jpg',
    'images/carousel4.jpg',
    'images/carousel6.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: MenuAppBar(),
      ),

      body: Container(
        child: ListView(
          children: [
            Carousel(imageList : imageList),
            SearchBar(),
            ViewAllPromotor(),
          ],
        ),
      ),

      bottomNavigationBar: MenuBottom(selectedPage: selectedNumber),
    );
  }
}