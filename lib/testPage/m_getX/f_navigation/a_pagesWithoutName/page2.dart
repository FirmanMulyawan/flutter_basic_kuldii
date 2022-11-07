import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page3.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Dua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // navigator!.pop();
                  Get.back(result: "ini dari page 2 lohh");
                },
                child: const Text('<< back Page')),
            ElevatedButton(
                onPressed: () {
                  Get.to(const PageTiga());
                },
                child: const Text('Next Page >>')),
            // Text(Get.arguments.toString()),
          ],
        ),
      ),
    );
  }
}
