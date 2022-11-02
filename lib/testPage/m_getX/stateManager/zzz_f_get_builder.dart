import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controllers/counter_controller.dart';

void main(List<String> args) {
  runApp(MyAppX());
}

class MyAppX extends StatelessWidget {
  MyAppX({super.key});

  final countC = Get.put(CounterControllerSimple());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GetBuilder<CounterControllerSimple>(
          // init: CounterControllerSimple(),
          builder: (controller) => Text(
            "Angka ${controller.count}",
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // Get.find<CounterControllerSimple>().increment();
        countC.increment();
      }),
    ));
  }
}
