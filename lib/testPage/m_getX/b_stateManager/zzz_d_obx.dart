import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controllers/orang_controller.dart';

void main(List<String> args) {
  runApp(MyAppX());
}

class MyAppX extends StatelessWidget {
  MyAppX({super.key});

  final orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            // "nama saya ${OrangC.orang.nama}",
            "nama saya ${orangC.orang.value.nama}",

            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        orangC.changeUpperCase();
      }),
    ));
  }
}
