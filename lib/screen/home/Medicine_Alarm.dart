import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy_guide/screen/home/home_screen.dart';

class MedicineAlarm extends StatelessWidget {
  const MedicineAlarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Alarm'),
        backgroundColor: Colors.teal.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Center(child: Text('>>> Please add medicine info and\nalarm schedule to remind you every day,the\nspecific drugs you are taking.'))),
          Expanded(
            flex: 1,
              child: Container(alignment: Alignment.bottomCenter,child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Tap"+" to add medicine -->'),
                  SizedBox(height: 40),
                ],
              )))
        ],
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.teal.shade900,
        onPressed: () {  },
        child: Icon(Icons.add),
      ),

    );
  }
}
