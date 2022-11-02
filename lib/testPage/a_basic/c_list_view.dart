import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // List <Container> myList = [
  // karena stateless harus final
  final List<Widget> myList = [
    Container(height: 300, width: 100, color: Colors.red),
    Container(height: 300, width: 100, color: Colors.green),
    Container(height: 300, width: 100, color: Colors.blue),
    Container(height: 300, width: 100, color: Colors.amber),
  ];

  // karena stateless harus final
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  final List<Widget> myList2 =
      // List.generate(100, (index) => Text(index.toString()));
      List.generate(
          100,
          (index) => Text('${index + 1}',
              style: TextStyle(fontSize: 20 + double.parse(index.toString()))));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),

        // body: ListView(
        //   // scrollDirection: Axis.vertical,
        //   // scrollDirection: Axis.horizontal,
        //   // children: [
        //   //   Container(height: 300, width: 100, color: Colors.red),
        //   //   Container(height: 300, width: 100, color: Colors.green),
        //   //   Container(height: 300, width: 100, color: Colors.blue),
        //   //   Container(height: 300, width: 100, color: Colors.amber),
        //   // ]
        //   children: myList,
        // ),

        // body: ListView.builder(
        //   // itemCount: 4,
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(height: 300, width: 300, color: myColor[index]);
        //   },
        // ),

        // body: ListView.separated(
        //   separatorBuilder: (contex, index) {
        //     // return Container(height: 30, color: Colors.black);
        //     return const Divider(color: Colors.black);
        //   },
        //   itemCount: myColor.length,
        //   // itemBuilder: (context, index) {
        //   //   return Container(height: 300, width: 300, color: myColor[index]);
        //   // },

        //   itemBuilder: (context, index) {
        //     return const Text('hallo');
        //   },
        // ),

        body: ListView(
          children: myList2,
        ),
      ),
    );
  }
}
