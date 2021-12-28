import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  List imageList;

  Carousel({ required this.imageList , Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      elevation: 5,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          enlargeCenterPage: true,
          /*onPageChanged: (position,reason){
            print(reason);
            print(CarouselPageChangedReason.controller);
          },*/
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
        items: imageList.map<Widget>((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(i),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(3.0, 3.0),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]
                )
              );
            },
          );
        }).toList(),
      ),
    );
  }
}