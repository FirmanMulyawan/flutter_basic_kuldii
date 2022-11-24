import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/shopc.dart';

class ShopItem extends StatelessWidget {
  ShopItem({super.key});

  final shopC = Get.find<ShopC>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {
              shopC.quantity.value--;
              // shopC.total.value--;
              Get.find<ShopC>(tag: 'total').total.value--;
            },
            icon: const Icon(Icons.remove)),
        Obx(
          () => Text(
            '${shopC.quantity}',
            style: const TextStyle(fontSize: 25),
          ),
        ),
        IconButton(
            onPressed: () {
              shopC.quantity.value++;
              // shopC.total.value++;
              Get.find<ShopC>(tag: 'total').total.value++;
            },
            icon: const Icon(Icons.add)),
      ],
    );
  }
}
