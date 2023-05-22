import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 300,
        height: 500,
        color: Colors.amber,
        child: AnimatedAlign(
            duration: const Duration(seconds: 2),
            alignment: click ? Alignment.topLeft : Alignment.bottomRight,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    click = !click;
                  });
                },
                child: const Icon(Icons.ac_unit, size: 50))),
      )),
    );
  }
}
