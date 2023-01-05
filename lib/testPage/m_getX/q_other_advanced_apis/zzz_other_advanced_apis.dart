// https://nicksnettravels.builttoroam.com/flutter-navigation/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyappOther());
}

class MyappOther extends StatelessWidget {
  const MyappOther({super.key});

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
            child: ElevatedButton(
          onPressed: () =>
              Get.to(() => const SecondPage(), arguments: 'Arg from home page'),
          child: const Text('Second Page >>'),
        )));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${Get.arguments}'),
          Text(
            '${Get.rawRoute}',
            textAlign: TextAlign.center,
          ),
          Text(
            Get.routing.current,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: () => Get.to(() => const OtherPage()),
              child: const Text('Other Page')),
        ],
      )),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Page')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Other Page'),
          Text(
            Get.previousRoute,
            textAlign: TextAlign.center,
          ),
          Text(
            '${Get.rawRoute}',
            textAlign: TextAlign.center,
          ),
          // Text(
          //   '${Get.isSnackbarOpen}',
          //   textAlign: TextAlign.center,
          // )
          Text(
            GetPlatform.isAndroid ? 'ini android' : 'bukan android',
            textAlign: TextAlign.center,
          ),
          Text(
            GetPlatform.isDesktop ? 'ini desktop' : 'bukan desktop',
            textAlign: TextAlign.center,
          ),
          Text(
            'getx ${Get.height}',
            textAlign: TextAlign.center,
          ),
          Text(
            'getx ${Get.width}',
            textAlign: TextAlign.center,
          ),
          Text(
            'MediaQuery ${MediaQuery.of(context).size.height}',
            textAlign: TextAlign.center,
          ),
          Text(
            'MediaQuery ${MediaQuery.of(context).size.width}',
            textAlign: TextAlign.center,
          ),
          Text(
            'orientation ${context.orientation}',
            textAlign: TextAlign.center,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // print('snackbar status open : ${Get.isSnackbarOpen}');
        // Get.snackbar('ini judul', 'ini deskrpisi');
        // print('snackbar status open : ${Get.isSnackbarOpen}');
        // Get.removeRoute(Get.rawRoute!);
        // Get.until((route) => false);
        // Get.until((route) => Get.currentRoute == '/SecondPage');
        Get.until((route) => Get.currentRoute == '/');
      }),
    );
  }
}
