import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/health_tips_model.dart';
import 'package:pharmacy_guide/models/helth_tips_item_model.dart';
import 'package:pharmacy_guide/screen/helth_tips_cata/helth_tips_cata_screen.dart';
import 'package:pharmacy_guide/screen/item_details/item_details_screen.dart';

import 'CategoryGrideView.dart';
import 'CategoryItem.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CategoryGrideView(),
            ),
            SizedBox(
              width: 400,
              child: Divider(
                color: Colors.black38,
                height: 20,
              ),
            ),
            Expanded(
              flex: 4,
              child: CategoryItem(size: size),
            ),
          ],
        ),
      ),
    );
  }
}

