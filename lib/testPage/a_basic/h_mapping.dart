import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  MyWidget({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      'Name': 'Sandhika',
      'Age': 23,
      'favColor': [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ],
    },
    {
      'Name': 'Yusuf',
      'Age': 25,
      'favColor': ["white", "Red", "Green"],
    },
    {
      'Name': 'Rahmat',
      'Age': 23,
      'favColor': ["Black", "Red", "Amber"],
    },
    {
      'Name': 'Sandhika',
      'Age': 23,
      'favColor': [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Mapping List')),
        body: ListView(
          children: myList.map((data) {
            List myfavcolor = data['favColor'];

            return Card(
              margin: const EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name: ${data['Name']}'),
                          Text('Age: ${data['Age']}'),
                        ],
                      )
                    ]),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: myfavcolor.map((color) {
                            return Container(
                              color: Colors.amber,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 8),
                              padding: const EdgeInsets.all(10),
                              child: Text(color),
                            );
                          }).toList()),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
