import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/health_tips_model.dart';
import 'package:pharmacy_guide/screen/helth_tips_cata/helth_tips_cata_screen.dart';

import 'helth_tips_cata/helth_tips_cata_screen.dart';

class CategoryGrideView extends StatelessWidget {
  const CategoryGrideView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: h_tips.length,
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HelthTipsCataScreen(
                  selectedCatagory: h_tips[index].h_t_cata,
                ),
              ));
        },
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            height: 40,
            color: Colors.white.withOpacity(0.5),
            child: Text(
              h_tips[index].Name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(h_tips[index].image), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
