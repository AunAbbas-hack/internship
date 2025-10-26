import 'package:flutter/material.dart';
import 'package:internship/Login/home-screen.dart';
import 'package:internship/Login/login.dart';
import 'package:internship/Login/student.dart';
import 'package:internship/Login/teacher.dart';
import 'package:internship/Practice/Splash%20Screen/splash-1.dart';
import 'dart:async';

import 'package:internship/Practice/Screens/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash1()));
       });
    // isLogin();
        }
  // void isLogin() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   bool isLogin = sp.getBool("isLogin") ?? false;
  //   String user=sp.getString("userType")??"";
  //   if (isLogin) {
  //     if(user=="Student"){
  //       Timer(Duration(seconds: 3), () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => Student()),
  //         );
  //       });
  //     }
  //     else if (user=="Teacher"){
  //       Timer(Duration(seconds: 3), () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => Teacher()),
  //         );
  //       });
  //     }
  //     else{
  //       Timer(Duration(seconds: 3), () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => HomeScreen()),
  //         );
  //       });
  //     }
  //   } else {
  //     Timer(Duration(seconds: 3), () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => Login()),
  //       );
  //     });
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/splashLogo.png")),
    );
  }
}
