import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mygetcli/app/modules/home/controllers/home_controller.dart';

import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  final homeC = Get.find<HomeController>();
  EditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = homeC.findById(Get.arguments);
    controller.name.text = data.name!;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit product'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                autocorrect: false,
                controller: controller.name,
                decoration: InputDecoration(
                    labelText: 'Product Name',
                    hintText: 'Input Product name here...',
                    border: OutlineInputBorder()),
                onEditingComplete: () =>
                    homeC.edit(Get.arguments, controller.name.text),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () =>
                      homeC.edit(Get.arguments, controller.name.text),
                  child: Text('Edit Product'))
            ],
          ),
        ));
  }
}
