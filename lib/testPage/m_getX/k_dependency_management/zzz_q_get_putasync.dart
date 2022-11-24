// =========== jarang digunakan

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(const MyAppPutAsync());
}

class MyAppPutAsync extends StatelessWidget {
  const MyAppPutAsync({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home'),
          OutlinedButton(
              onPressed: () => Get.to(() => CountPage()),
              child: const Text('Next >>'))
        ],
      )),
    );
  }
}

class CountPage extends StatelessWidget {
  CountPage({super.key});

  final count = 0.obs;
  // final c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              '$count',
              // '${c.count}',
              style: const TextStyle(fontSize: 25),
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          // onPressed: () => c.setData(),
          onPressed: () => Get.putAsync<SharedPreferences>(() async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setInt('counter', 99);
                count.value = prefs.getInt('counter')!.toInt();
                return prefs;
              })),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  Future<void> setData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 99);

    count.value = prefs.getInt('counter')!.toInt();
  }
}
