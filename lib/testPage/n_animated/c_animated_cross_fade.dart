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
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 350,
              color: Colors.amber,
            ),
            const SizedBox(height: 10),
            AnimatedCrossFade(
              firstChild: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              secondChild: Container(
                height: 300,
                width: 50,
                color: Colors.green,
              ),
              crossFadeState:
                  click ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 800),
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: 350,
              color: Colors.amber,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            click = !click;
          });
        },
      ),
    );

    // return Scaffold(
    //   body: Center(
    //       child: AnimatedCrossFade(
    //     firstChild: Container(
    //       width: 250,
    //       height: 250,
    //       color: Colors.amber,
    //       child: const Center(child: Text('Hallo')),
    //     ),
    //     // secondChild: Container(
    //     //   width: 250,
    //     //   height: 250,
    //     //   color: Colors.red,
    //     //   child: const Text('Good Bye'),
    //     // ),
    //     secondChild: const Icon(Icons.ac_unit),
    //     crossFadeState:
    //         click ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    //     duration: const Duration(milliseconds: 800),
    //   )),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       setState(() {
    //         click = !click;
    //       });
    //     },
    //   ),
    // );
  }
}
