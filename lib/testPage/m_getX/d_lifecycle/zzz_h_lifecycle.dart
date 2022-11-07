import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyAppLifeCycle());
}

class MyAppLifeCycle extends StatelessWidget {
  const MyAppLifeCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageLifecycle(),
    );
  }
}

class HomePageLifecycle extends StatelessWidget {
  final countC = Get.put(CounterController());

  HomePageLifecycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OtherPage(),
                  )),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Center(child: CountWidget()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.add();
        },
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
        initState: (_) => print('initState'),
        didChangeDependencies: (_) => print('didChangeDependencies'),
        didUpdateWidget: (oldWidget, state) => print('didUpdateWidget'),
        dispose: (state) => print('dispose'),
        builder: (controller) => Text('angka ${controller.count}'));
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class CounterController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}
