import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyFittedBox());
}

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Fitted Box')),
        body: Center(
            child: Container(
          color: Colors.blue,
          width: 300,
          height: 110,
          // child: const Center(
          //   child: FittedBox(
          //     child: Text('haaasss',
          //         style: TextStyle(fontSize: 35, color: Colors.white)),
          //   ),
          // ),

          child: FittedBox(
            alignment: Alignment.centerLeft,
            // fit: BoxFit.cover,
            child: Image.network('https://picsum.photos/200/300'),
          ),
        )),
      ),
    );
  }
}
