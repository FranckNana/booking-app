import 'package:booking_app/common/menu_bottom.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({ Key? key }) : super(key: key);

  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: Text(
          'Live',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Center(
        child: Text('do omething'),
      ),

      bottomNavigationBar: MenuBottom(selectedPage: 2),
    );
  }
}