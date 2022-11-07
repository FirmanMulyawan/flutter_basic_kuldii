import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route_name.dart';

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
                  // Get.offAll(const PageLima());
                  // Get.offAllNamed('/page-5');
                  Get.offAllNamed(RouteName.page_5);
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
