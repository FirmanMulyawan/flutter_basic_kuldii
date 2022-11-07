import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route_name.dart';

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
                  // Get.toNamed('/page-4');
                  Get.toNamed(RouteName.page_4);
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
