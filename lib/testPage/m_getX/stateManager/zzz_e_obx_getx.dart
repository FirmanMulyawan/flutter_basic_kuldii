import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controllers/counter_controller.dart';

void main(List<String> args) {
  runApp(const MyAppX());
}

class MyAppX extends StatelessWidget {
  const MyAppX({super.key});

  // final countC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Center(
        // child: Obx(
        //   () => Text(
        //     // "Angka ${countC.count}",
        //     "Angka",

        //     style: const TextStyle(
        //       fontSize: 35,
        //     ),
        //   ),
        // ),
        child: GetX<CounterController>(
          init: CounterController(),
          builder: (controller) => Text(
            // "Angka ${countC.count}",
            "Angka ${controller.count.value}",

            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // countC.increment();
        Get.find<CounterController>().increment();
      }),
    ));
  }
}
