import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/helth_tips_item_model.dart';
import 'package:pharmacy_guide/screen/item_details/item_details_screen.dart';

import 'item_details/item_details_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: h_item_list.length,
      itemBuilder: (context, index) => InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailsScreen(selectedItem: h_item_list[index],),));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  spreadRadius: 3,
                  offset: Offset(0, 2),
                )
              ]),
          height: size.height * .2,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(h_item_list[index].h_item_img),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Expanded(
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            h_item_list[index].h_item_name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            h_item_list[index].h_item_details,
                            style: TextStyle(),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 15,
        );
      },
    );
  }
}

