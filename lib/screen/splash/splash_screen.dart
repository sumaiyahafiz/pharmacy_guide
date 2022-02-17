import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_guide/constants.dart';
import 'package:pharmacy_guide/screen/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  List<String> images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) => Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/${images[index]}',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
          ),
          child: Container(
            margin: EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(
                      text: 'Toure',
                    ),
                    SizedBox(height: 20,),
                    AppText(text: 'Mountain',size: 20,color: Colors.black54,),
                    SizedBox(
                      width: 300,
                      child: AppLargeText(
                        text: 'Physical activity is an important part of your weight management program. Most weight loss occurs because of decreased calorie intake. Sustained physical activity is most helpful in the prevention of weight regain. In addition,',
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppText extends StatelessWidget {
   AppText({
    Key? key, this.color=Colors.black38,this.size=16, required this.text,
  }) : super(key: key);
  double size = 16;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

class AppLargeText extends StatelessWidget {
  AppLargeText({
    Key? key,
    required this.text,
    this.color = Colors.black87,
  }) : super(key: key);
  final String text;
  final Color color;
  double size = 30;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}
