import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/my_controller.dart';

class HomePageWorkers extends StatelessWidget {
  HomePageWorkers({super.key});
  final myC = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Filed'),
        actions: [
          IconButton(
              onPressed: () => myC.reset(), icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "terjadi sesuatu : ${myC.count}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (_) => myC.change(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
