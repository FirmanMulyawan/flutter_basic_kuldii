import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController animC;

  late final Animation<double> animation;

  @override
  void onInit() {
    animC = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    animation = CurvedAnimation(
      parent: animC,
      curve: Curves.easeIn,
    );
    super.onInit();
  }

  @override
  void onClose() {
    animC.dispose();
    super.onClose();
  }
}
