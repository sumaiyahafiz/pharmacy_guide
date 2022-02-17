import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy_guide/constants.dart';
import 'package:pharmacy_guide/models/Disease_Symptoms_Model.dart';

class DiseaseSymptomsDetails extends StatelessWidget {
  const DiseaseSymptomsDetails({
    Key? key,
    required this.disease,
  }) : super(key: key);
  final DiseaseSymptomsModel disease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(disease.d_s_image),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Container(
              width: double.maxFinite,
              color: primaryColor,
              height: 55,
              child: Center(
                child: Text(
                  disease.d_s_Name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                disease.d_s_details,
                style: TextStyle(fontSize: 16,color: Colors.black87),
              ),
            ),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Symptoms :',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: disease.Symptoms.length,
              itemBuilder: (context, index) => Container(
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.circle,size: 10,color: primaryColor),
                    SizedBox(width: 10),
                    Text(disease.Symptoms[index]),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Recovery :',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: disease.recovery.length,
              itemBuilder: (context, index) => Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.circle,size: 10,color: primaryColor),
                    SizedBox(width: 10),
                    Flexible(child: Text(disease.recovery[index],)),
                  ],
                ),
              ),
            ),
            Text(disease.resistance==null?'':'Resistance'),

            disease.resistance==null?SizedBox(): ListView.builder(
              shrinkWrap: true,
              itemCount: disease.resistance!.length,
              itemBuilder: (context, index) => Container(
                child: Row(
                  children: [
                    Icon(Icons.circle),
                    Text(disease.resistance![index]),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
