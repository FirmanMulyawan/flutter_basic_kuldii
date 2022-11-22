import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes_name.dart';

class Productpage extends StatelessWidget {
  const Productpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('all Product')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () => Get.toNamed('/product/1/Jaket'),
            //   child: const Text('All Product 1'),
            // ),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed('${RouteName.product}/1?name=jaket&ukuran=XL'),
              child: const Text('All Product 1'),
            ),
            // ElevatedButton(
            //   onPressed: () => Get.toNamed('/product/2/Sepatu'),
            //   child: const Text('All Product 2'),
            // ),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                  '${RouteName.product}/2?name=sepatu baru banget beli&ukuran=jumbo'),
              child: const Text('All Product 2'),
            ),
            // ElevatedButton(
            //   onPressed: () => Get.toNamed('/product/3/Sendal'),
            //   child: const Text('All Product 3'),
            // ),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                  '${RouteName.product}/3?name=Sendal Baru&ukuran=45'),
              child: const Text('All Product 3'),
            ),
          ],
        ),
      ),
    );
  }
}
