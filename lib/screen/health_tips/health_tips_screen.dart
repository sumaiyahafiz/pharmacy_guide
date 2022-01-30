import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/health_tips_model.dart';
import '../../constants.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Health tips',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            height: 200,
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) =>
                  Container(
                    child: Image(image: NetworkImage(
                        'https://i.pinimg.com/originals/6c/e8/ae/6ce8ae72371f5aac565c7953691c5750.jpg'),),
                  ),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
