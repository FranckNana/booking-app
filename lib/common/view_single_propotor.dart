import 'package:booking_app/common/menu_bottom.dart';
import 'package:flutter/material.dart';

class ViewSinglePromotor extends StatefulWidget {
  const ViewSinglePromotor({ Key? key }) : super(key: key);

  @override
  _ViewSinglePromotorState createState() => _ViewSinglePromotorState();
}

class _ViewSinglePromotorState extends State<ViewSinglePromotor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single view Promotor')),
      body: Center(
        child: Text('do something'),
      ),
    );
  }
}