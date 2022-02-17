import 'package:flutter/material.dart';
import 'package:pharmacy_guide/screen/health_tips/health_tips_screen.dart';
import 'package:pharmacy_guide/screen/home/home_screen.dart';
import 'package:pharmacy_guide/screen/splash/splash_screen.dart';

import 'screen/Disease_Symptoms/Disease _Symptoms Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplashScreen(),
      home: HomeScreen(),

    );
  }
}
