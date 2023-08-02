import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Express_Money_.dart';
import 'Login_1.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => Splash_ScreenState();
}
class Splash_ScreenState extends State<Splash_Screen> {
  static const String KEYLOGIN = 'login';
  @override
  void initState() {
    super.initState();
   whereToGo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/img.png'))
        ],
      ),
    );
  }

  void whereToGo() async{
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
    Timer(Duration(seconds: 2),(){
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Landing_Page(),),);
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_Pages(),),);
        }
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_Pages(),),);
      }
    });
  }
}