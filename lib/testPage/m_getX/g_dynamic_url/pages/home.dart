import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageDynamicUrl extends StatelessWidget {
  const HomePageDynamicUrl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/product'),
          child: const Text('All Product >>'),
        ),
      ),
    );
  }
}
