import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route_name.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Get.to(const PageDua());
                  // Get.toNamed('/page-2');
                  Get.toNamed(RouteName.page_2);
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
