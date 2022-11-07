import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Lima"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('<< back Page')),
          ],
        ),
      ),
    );
  }
}
