import 'package:flutter/material.dart';
import 'package:internship/Login/login.dart';
import 'package:internship/fazool/Calculator/calculator.dart';
import 'package:internship/fazool/container.dart';
import 'package:internship/fazool/lottery.dart';
import 'package:internship/fazool/whatsapp/wp-home.dart';
import 'package:internship/fazool/intern1.dart';

import 'Practice/Splash Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
          toolbarTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        ),

        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),

      home:SplashScreen(),
    );
  }
}
