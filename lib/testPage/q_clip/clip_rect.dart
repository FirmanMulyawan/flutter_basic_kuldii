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
        child: ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.75,
            widthFactor: 0.5,
            child: Container(
              color: Colors.amber,
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
