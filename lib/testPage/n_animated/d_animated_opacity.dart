import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              curve: Curves.bounceIn,
              opacity: click ? 0.2 : 1,
              child: const FlutterLogo(size: 250)),
          // child: Opacity(
          //   opacity: click ? 0.2 : 1,
          //   child: const FlutterLogo(
          //     size: 250,
          //   ),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              click = !click;
            });
          },
        ),
      ),
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Center(
    //       child: AnimatedContainer(
    //         duration: const Duration(milliseconds: 800),
    //         width: 250,
    //         height: 250,
    //         color: Colors.amber.withOpacity(click ? 0.2 : 1),
    //       ),
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {
    //         setState(() {
    //           click = !click;
    //         });
    //       },
    //     ),
    //   ),
    // );
  }
}
