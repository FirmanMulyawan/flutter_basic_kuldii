import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16000),
          // borderRadius: const BorderRadius.only(
          //   topRight: Radius.circular(70),
          //   bottomLeft: Radius.circular(20),
          // ),
          child: Container(
            width: 100,
            // height: 250,
            height: 150,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
