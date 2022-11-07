import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page5.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Empat"),
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
            ElevatedButton(
                onPressed: () {
                  // Get.to(const PageLima());
                  Get.offAll(const PageLima());
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
