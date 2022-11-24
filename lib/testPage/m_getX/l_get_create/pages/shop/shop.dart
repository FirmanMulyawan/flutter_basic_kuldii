import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/shopc.dart';
import './widgets/shop_item.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  final shopC = Get.put(ShopC(), tag: 'total');
  final quantityC = Get.create(() => ShopC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Page'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ShopItem(),
      ),
      floatingActionButton:
          CircleAvatar(child: Obx(() => Text('${shopC.total.value}'))),
    );
  }
}
