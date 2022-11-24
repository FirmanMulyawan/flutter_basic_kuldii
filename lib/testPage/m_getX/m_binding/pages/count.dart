import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/countc.dart';

class CountPage extends StatelessWidget {
  CountPage({super.key});

  final countC = Get.find<CountC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count page'),
      ),
      body: Center(
        child: Obx(() => Text(
              '${countC.count}',
              style: const TextStyle(fontSize: 35),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
