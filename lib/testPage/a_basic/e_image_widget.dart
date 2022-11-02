// format yang support: jpeg, png, gif, webp, bmp, wbmp
// jenis provider image: assets, network, file, memory
// kecepatan provider : memory-> assets-> file-> network

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
        appBar: AppBar(title: const Text('Image Widget')),
        body: Center(
            child: Container(
          width: 350,
          height: 500,
          color: Colors.redAccent,
          // child: const Image(
          //   image: AssetImage('images/image.jpg'),
          //   fit: BoxFit.cover,
          //   // image: NetworkImage('https://picsum.photos/200/300'),
          // ),

          // child: Image.asset('images/image.jpg', fit: BoxFit.cover),
          child:
              Image.network('https://picsum.photos/200/300', fit: BoxFit.cover),
        )),
      ),
    );
  }
}
