import 'package:flutter/material.dart';
import './pages/home.dart';

void main(List<String> args) {
  runApp(const MyAppWorkers());
}

class MyAppWorkers extends StatelessWidget {
  const MyAppWorkers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageWorkers(),
    );
  }
}
