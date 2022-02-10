import 'package:flutter/material.dart';
import 'package:pharmacy_guide/models/health_tips_model.dart';
import 'package:pharmacy_guide/models/helth_tips_item_model.dart';
import 'package:pharmacy_guide/screen/helth_tips_cata/helth_tips_cata_screen.dart';

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
              child: GridView.builder(
                itemCount: h_tips.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HelthTipsCataScreen(),));
                  },
                  child: Container(
alignment: Alignment.bottomCenter,
                    child: Text(h_tips[index].Name,style: TextStyle(),),
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(h_tips[index].image),
                      )
                    ),
                  ),
                ),
              ),
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
              child: ListView.separated(
                itemCount: h_item_list.length,
                itemBuilder: (context, index) => Container(

                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  height: size.height * .2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Image(
                            image: AssetImage( h_item_list[index].h_item_img),
                          ),
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
                ), separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,); },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
