import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('My Apps'),
        ),
        body: const Center(
            child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of.',
          // maxLines: 2,
          // overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            backgroundColor: Colors.amber,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            // letterSpacing: 10,
            fontFamily: 'Stick',
            decorationStyle: TextDecorationStyle.wavy,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationThickness: 2,
          ),
        )),
      ),
    );
  }
}
