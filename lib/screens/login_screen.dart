import 'package:booking_app/screens/admin_screen.dart';
import 'package:booking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_login/flutter_login.dart';

const users = const {
  'franjudina@gmail.com': 'a123b456',
  'nanafranck94@gmail.com': 'a123b456',
  'cephaszoubga@gmail.com': '123456',
};

class LoginScreen extends StatelessWidget  {
  const LoginScreen({ Key? key }) : super(key: key);

  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      
      onWillPop: () async {
        Get.offAll(HomeScreen(selectedPage:0));
        return true;
      },

      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.deepPurpleAccent,
          leading: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Get.offAll(HomeScreen(selectedPage:0)),
          ),
          title: Text(
            '',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    
        body: Container(
          
          child: FlutterLogin(

            title: 'Welcome',
            logo: AssetImage(
              'images/login.png',
            ),
            onLogin: _authUser,
            onSignup: _signupUser,
            onSubmitAnimationCompleted: () {
              Get.to(AdminScreen());
            },
            onRecoverPassword: _recoverPassword,


            /******************* CUSTOMISED THEME ***************************/

            theme: LoginTheme(
              primaryColor: Colors.deepPurpleAccent,
              titleStyle: TextStyle(
                color: Colors.greenAccent,
                fontFamily: 'Quicksand',
                letterSpacing: 4,
              ),
              bodyStyle: TextStyle(
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
              buttonStyle: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.yellow,
              ),
              inputTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.purple.withOpacity(.1),
                contentPadding: EdgeInsets.zero,
                errorStyle: TextStyle(
                  backgroundColor: Colors.orange,
                  color: Colors.white,
                ),
                labelStyle: TextStyle(fontSize: 14),

                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade700, width: 4),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade400, width: 8),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 5),
                ),
              ),
              buttonTheme: LoginButtonTheme(
                splashColor: Colors.purple,
                backgroundColor: Colors.pinkAccent,
                highlightColor: Colors.lightGreen,
                elevation: 9.0,
                highlightElevation: 6.0,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            /********************************************************************/
          ),
        ),
    
      ),
    );
  }
}