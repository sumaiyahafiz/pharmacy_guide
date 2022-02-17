import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/helth_tips_item_model.dart';
import 'package:pharmacy_guide/screen/item_details/item_details_screen.dart';

class HelthTipsCataScreen extends StatelessWidget {
  HelthTipsCataScreen({Key? key, required this.selectedCatagory})
      : super(key: key);
  final String selectedCatagory;
  List<HealthTipsItemModel> filteredItem=[];
  _filtering(){
    for(int i=0; i<h_item_list.length;i++){
      if(selectedCatagory==h_item_list[i].h_item_cata){
        filteredItem.add(h_item_list[i]);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    _filtering();
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCatagory),
      ),
      body: ListView.builder(
        itemCount:filteredItem.length,
        itemBuilder: (context, index) => InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailsScreen(selectedItem: filteredItem[index],)));
          },
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    spreadRadius: 2,
                  )
                ]),
            height: MediaQuery.of(context).size.height * .2,
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(filteredItem[index].h_item_img),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filteredItem[index].h_item_name,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        filteredItem[index].h_item_details,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
