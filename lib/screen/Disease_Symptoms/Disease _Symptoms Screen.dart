import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_guide/constants.dart';
import 'package:pharmacy_guide/models/Disease_Symptoms_Model.dart';

import 'Disease_details.dart';

class DiseaseSymptoms extends StatelessWidget {
  const DiseaseSymptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disease & Symptoms'),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
          itemCount: d_s_List.length,
          itemBuilder: (context, index) => InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseaseSymptomsDetails(disease: d_s_List[index],)));
            },
            child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.bottomCenter,
                  height: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(1, 1),
                            blurRadius: 3.0,
                            spreadRadius: 3.0),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.purple,
                      image: DecorationImage(
                        image: NetworkImage(d_s_List[index].d_s_image),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            //offset: Offset(2, 3),
                            blurRadius: 2.0,
                            spreadRadius: 3.0),
                      ],
                      gradient: LinearGradient(
                          colors: [
                            Colors.transparent.withOpacity(.5),
                            Colors.transparent
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(0.5, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    width: double.maxFinite,
                    child: ListTile(
                      title: Text(
                        d_s_List[index].d_s_Name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        d_s_List[index].d_s_details,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                ),
          )),
    );
  }
}
