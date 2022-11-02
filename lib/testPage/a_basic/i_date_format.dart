// https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Date Format')),
        body: Center(
            // child: Text(DateTime(2021, 9, 2, 15, 15).toString(),
            // child: Text(DateTime.now().toString(),
            child: Text(DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
                style: const TextStyle(fontSize: 25))),
      ),
    );
  }
}
