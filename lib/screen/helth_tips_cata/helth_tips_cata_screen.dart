import 'package:flutter/material.dart';

class HelthTipsCataScreen extends StatelessWidget {
  const HelthTipsCataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
        child: Row(children: [
          Image(image: AssetImage('assets/images/pnda.jpg')),
          Text('data'),
        ],),
      ),),
    );
  }
}
