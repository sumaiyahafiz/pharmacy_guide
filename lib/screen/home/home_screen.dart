import 'package:flutter/material.dart';
import 'package:pharmacy_guide/constants.dart';
import 'package:pharmacy_guide/models/GridViewModel.dart';
import 'package:pharmacy_guide/screen/Disease_Symptoms/Disease%20_Symptoms%20Screen.dart';
import 'package:pharmacy_guide/screen/alarm/alarm_screen.dart';
import 'package:pharmacy_guide/screen/health_tips/health_tips_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: textPrimaryColor,
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'First',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Second',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "Third",
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AlarmScreen()));
                    debugPrint('clicked');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://previews.123rf.com/images/suksao/suksao1704/suksao170400002/75460320-medicine-is-pill-and-capsule-clock-show-12-am-or-pm-with-copy-space-on-wood-table-.jpg',
                          ),
                        ),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                    ),
                    height: 200,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HealthTips(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(

                          color: Colors.pink,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://cdn2.momjunction.com/wp-content/uploads/2020/11/17-Simple-And-Useful-Health-Tips-For-Children-To-Follow-Banner-910x1024.jpg',
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseaseSymptoms()));
                            },
                            child: Container(
                              decoration: BoxDecoration(

                                color: Colors.green,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://www.stormontvail.org/wp-content/uploads/2018/02/infectious-disease-1.png',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseaseSymptoms()));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://www.stormontvail.org/wp-content/uploads/2018/02/infectious-disease-1.png',
                                ),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text(
                'Facility',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 200,
                child: GridView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => GridTile(
                    header: Icon(grid_List[index].icon),
                      footer: Text(grid_List[index].Name),
                      child: Container(
                    color: Colors.amber,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
