import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp2());
}

class Myapp2 extends StatelessWidget {
  Myapp2({Key? key}) : super(key: key);

  final List<Container> myList = List.generate(
      90,
      (index) => Container(
          // height: 50, tidak bisa
          // width: 150, tidak bisa
          color: Color.fromARGB(255, Random().nextInt(256),
              Random().nextInt(256), Random().nextInt(256))));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Grid View')),
        // body: GridView(
        //   padding: const EdgeInsets.all(10),
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 4 / 3,
        //   ),
        //   children: myList,
        // ),
        body: GridView.count(
            childAspectRatio: 4 / 3,
            padding: const EdgeInsets.all(10),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: myList),
      ),
    );
  }
}
