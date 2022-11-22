import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product ${Get.parameters['id']}')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Product name ${Get.parameters['name']}'),
            Text('Product ukuran ${Get.parameters['ukuran']}')
          ],
        ),
      ),
    );
  }
}
