import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page4.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Tiga"),
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
                  Get.to(const PageEmpat());
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
