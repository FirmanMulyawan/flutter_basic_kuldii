// ====== UniqId hanya ada di GetBuilder

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyUniqId());
}

class MyUniqId extends StatelessWidget {
  MyUniqId({super.key});
  // ======= obx & get builder
  final countC = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          // ======= obx
          // child: Obx(
          //   () => Text(
          //     'angka ${countC.count}',
          //     style: const TextStyle(fontSize: 25),
          //   ),
          // ),
          // ======= get x
          // child: GetX<CountController>(
          //     init: CountController(),
          //     // initState: (_) {},
          //     builder: (c) {
          //       return Text(
          //         'angka ${c.count}',
          //         style: const TextStyle(fontSize: 25),
          //       );
          //     }),
          // ======= get builder
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GetBuilder<CountController>(
                id: "joni",
                builder: (_) {
                  return Text(
                    'joni ${countC.count}',
                    style: const TextStyle(fontSize: 25),
                  );
                }),
            GetBuilder<CountController>(
                id: 'panjul',
                builder: (_) {
                  return Text(
                    'panjul ${countC.count}',
                    style: const TextStyle(fontSize: 25),
                  );
                }),
            GetBuilder<CountController>(builder: (_) {
              return Text(
                'umum ${countC.count}',
                style: const TextStyle(fontSize: 25),
              );
            }),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            // ======= obx & get Builder
            onPressed: () => countC.add()
            // ======= get x
            // onPressed: () => Get.find<CountController>().add()
            ),
      ),
    );
  }
}

class CountController extends GetxController {
  // var count = 0.obs;

  // void add() {
  //   count++;
  // }

  // ======= get builder
  var count = 0;

  void add() {
    count++;
    // update(['joni', 'panjul']);
    update();
  }
}
