import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp1());
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  TextEditingController myController = TextEditingController();

  String hasil = 'hasil Input';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Filed'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: myController,
                onChanged: (value) {},
                onSubmitted: (value) {
                  setState(() {
                    hasil = value;
                  });
                },
                // sebelum di submit
                onEditingComplete: () {},
              ),
              Text(hasil),
            ],
          ),
        )),
      ),
    );
  }
}
