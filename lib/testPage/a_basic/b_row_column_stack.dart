import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('column'),
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 50,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 50,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       width: 300,
        //       height: 50,
        //       color: Colors.red,
        //     )
        //   ],
        // ),

        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 50,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 50,
        //       color: Colors.red,
        //     )
        //   ],
        // ),

        body: Stack(
          /// stack tidak ada mainAxisAlignment & crossAxisAlignment
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              color: Colors.green,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
