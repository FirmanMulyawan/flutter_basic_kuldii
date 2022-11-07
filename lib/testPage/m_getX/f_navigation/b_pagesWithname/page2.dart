import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route_name.dart';

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
                  Get.back();
                },
                child: const Text('<< back Page')),
            ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/page-3');
                  Get.toNamed(RouteName.page_3);
                },
                child: const Text('Next Page >>')),
            // Text(Get.arguments.toString()),
          ],
        ),
      ),
    );
  }
}
