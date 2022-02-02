import 'package:flutter/material.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemBuilder: (context, index) => Card(
                child: Container(
                  height: size.height * .2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Image(
                            image: NetworkImage(
                              'https://betterme.world/articles/wp-content/uploads/2020/09/shutterstock_1667782504.jpg',
                            ),
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
                                'Vitamin A',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                  'InstructorofMobileapplicationandGamedevelopmentprojectunderICT ministry InstructorofMobileapplicationandGamedevelopmentprojectunderICT ministry'),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
