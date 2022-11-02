import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Text Filed')),
          body: const Center(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              autocorrect: true,
              autofocus: true,
              enableSuggestions: true, // mirip autocorrect
              enableInteractiveSelection: false, // untuk copas
              enabled: true,
              obscureText: true, // untuk password
              obscuringCharacter: '=',
              keyboardType: TextInputType.phone,
              // readOnly: true,
            ),
          ))),
    );
  }
}
