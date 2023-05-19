import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dialogcontroller_controller.dart';
import '../controllers/count_controller.dart';

class CountView extends GetView<CountController> {
  final dialogController = Get.find<DialogcontrollerController>();
  CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CountView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${dialogController.count}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
