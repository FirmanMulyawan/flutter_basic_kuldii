import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'testPage/m_getX/basic/controllers/counter_controller.dart';

void main(List<String> args) {
  runApp(MyAppGetX());
}

class MyAppGetX extends StatelessWidget {
  MyAppGetX({super.key});
  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: HomePageGet(),
      ),
    );
  }
}

class HomePageGet extends StatelessWidget {
  HomePageGet({super.key});

  // final counterC = Get.put(CounterController());
  final c = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(() => Text('Angka ${c.counter}',
              style: const TextStyle(fontSize: 35)))),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => counterC.increment(),
        onPressed: () => c.changeTheme(),
      ),
    );
  }
}
