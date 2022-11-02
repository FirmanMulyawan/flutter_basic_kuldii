// change StatelessWidget to statefull widget klik kanan refactor

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StateFull Apps')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(counter.toString(),
                style: TextStyle(
                  fontSize: 50 + double.parse(counter.toString()),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        setState(() {
                          counter--;
                        });
                      }
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
