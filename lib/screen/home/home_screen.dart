import 'package:flutter/material.dart';
import 'package:pharmacy_guide/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                    debugPrint('clicked');
                  },
                  child: Container(
                    decoration: BoxDecoration(
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
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.green,
                            height: 150,
                            width: 180,
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.blue,
                            height: 50,
                            width: 180,
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
