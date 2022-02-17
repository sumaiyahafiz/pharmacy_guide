import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/helth_tips_item_model.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key, required this.selectedItem})
      : super(key: key);
  final HealthTipsItemModel selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedItem.h_item_name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image(
                  image: NetworkImage(selectedItem.h_item_img),
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              selectedItem.h_item_name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10,right: 10),

              child: Text(selectedItem.h_item_details,style: TextStyle(fontSize: 18),),
            ),
             //if(selectedItem.h_item_subDetails??)

            selectedItem.h_item_subDetails == null ? Container() :
            Container(

              child: ListView.builder(
                itemCount: selectedItem.h_item_subDetails!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  horizontalTitleGap: 0,
                  minLeadingWidth: 30 ,
                  leading: Icon(Icons.circle,color: Colors.black87,size: 10,) ,
                  title: Text(selectedItem.h_item_subDetails![index]),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
