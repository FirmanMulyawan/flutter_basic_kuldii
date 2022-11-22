import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp001());
}

class MyApp001 extends StatelessWidget {
  MyApp001({super.key});
  // final myC = Get.put(MyController());
  final c = Get.lazyPut(() => MyController(), tag: 'tag-text', fenix: true);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final c = Get.find<MyController>();
  // final c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.to(() => CountPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: const Center(
          // child: Obx(() => Text(
          //       "${c.count}",
          //       style: const TextStyle(fontSize: 35),
          //     ))
          child: Text(
        "home page",
        style: TextStyle(fontSize: 35),
      )),
      // floatingActionButton: FloatingActionButton(onPressed: () => c.add()),
    );
  }
}

class CountPage extends StatelessWidget {
  CountPage({super.key});

  final c = Get.put(MyController(), permanent: true, tag: 'tag-count');
  // final c = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.to(() => TextPage()),
              icon: const Icon(Icons.yard))
        ],
      ),
      body: Center(
          child: Obx(() => Text(
                "${c.count}",
                style: const TextStyle(fontSize: 35),
              ))),
      floatingActionButton: FloatingActionButton(onPressed: () => c.add()),
    );
  }
}

class TextPage extends StatelessWidget {
  TextPage({super.key});
  // final c = Get.find<MyController>(tag: 'tag-count');
  // final c = Get.put(MyController(), permanent: false, tag: 'tag-text');
  final c = Get.find<MyController>(tag: 'tag-text');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: TextField(
          controller: c.textC,
          decoration: const InputDecoration(border: OutlineInputBorder()),
        )),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  var textC = TextEditingController();

  void add() => count++;
}
