import 'package:booking_app/common/menu_bottom.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('TITLE')),

      body: Center(
        child: Text('do Something'),
      ),

      bottomNavigationBar: MenuBottom(selectedPage: 3),
    );
  }
}