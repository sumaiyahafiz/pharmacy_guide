import 'package:flutter/material.dart';
import 'package:pharmacy_guide/constants.dart';
import 'package:pharmacy_guide/screen/alarm/alarm_screen.dart';
import 'package:pharmacy_guide/screen/health_tips/health_tips_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(onPressed: () {

        }, icon: Icon(Icons.menu),
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
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineAlarm()));
                    });
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
                        borderRadius: BorderRadius.circular(10)),
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
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthTips(),),);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://nexttvc.com/wp-content/uploads/2022/01/Healthy-Food-Tips-242.jpg',
                            ),
                          ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://brettpodolsky.com/wp-content/uploads/2019/02/Depositphotos_103806958_m-2015.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://gulfdialysis.com/wp-content/uploads/2020/06/190107682.jpg',
                              ),
                            ),
                          )),
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
