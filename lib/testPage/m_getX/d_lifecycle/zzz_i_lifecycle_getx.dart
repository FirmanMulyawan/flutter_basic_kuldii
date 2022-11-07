import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 06: 55
void main(List<String> args) {
  runApp(const MyAppLifeCycle());
}

class MyAppLifeCycle extends StatelessWidget {
  const MyAppLifeCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePageLifecycle(),
    );
  }
}

class HomePageLifecycle extends StatelessWidget {
  const HomePageLifecycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        actions: [
          IconButton(
              // onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => TextPage(),
              //     )),
              onPressed: () => Get.to(() => TextPage()),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Center(child: Text('Home paage')),
    );
  }
}

class TextPage extends StatelessWidget {
  TextPage({super.key});
  final textC = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text page'),
      ),
      body: TextField(
        controller: textC.myC,
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
