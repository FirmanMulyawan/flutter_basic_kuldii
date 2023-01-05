import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route_name.dart';
import './controllers/counter_controller.dart';

class PageSatu extends StatelessWidget {
  PageSatu({super.key});

  final countC = Get.put(CounterControllerSimple());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterControllerSimple>(
              builder: (controller) => Text(
                "Angka ${controller.count}",
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Get.to(const PageDua());
                  // Get.toNamed('/page-2');
                  Get.toNamed(RouteName.page_2);
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // Get.find<CounterControllerSimple>().increment();
        countC.increment();
      }),
    );
  }
}
