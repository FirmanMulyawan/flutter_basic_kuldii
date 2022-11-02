import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        leading: Container(
          color: Colors.amber,
        ),
        leadingWidth: 100,
        // title: const Text('My AppBar'),
        title: Container(
          // width: 35,
          height: 35,
          color: Colors.redAccent,
        ),
        // titleSpacing: 0,
        // centerTitle: true,

        actions: [
          Container(
            width: 50,
            // height: 400, // tidak bisa diatur
            color: Colors.purpleAccent,
          ),
          Container(
            width: 50,
            // height: 400, // tidak bisa diatur
            color: Colors.black87,
          ),
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
            width: 50,
            height: 200,
            color: Colors.black87,
          ),
        ),

        // flexibleSpace: Container(
        //   // width: 50, tidak bisa diatur
        //   height: 200,
        //   color: Colors.lightGreen,
        // ),

        // flexibleSpace: const Text('Flexible space'),
        flexibleSpace: const Center(child: Text('Flexible space')),
      )),
    );
  }
}
