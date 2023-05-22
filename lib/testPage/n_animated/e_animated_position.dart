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
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 350,
          height: 350,
          child: Stack(
            children: [
              Container(
                width: 350,
                height: 350,
                color: Colors.amber,
                child: const Center(
                    child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 25),
                )),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 800),
                curve: Curves.fastOutSlowIn,
                top: click ? 100 : 150,
                left: 100,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              // Positioned(
              //   bottom: 50,
              //   right: 50,
              //   child: Container(
              //     width: 50,
              //     height: 50,
              //     color: Colors.red,
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          click = !click;
        });
      }),
    );
  }
}
