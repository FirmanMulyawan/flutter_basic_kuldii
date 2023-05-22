import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationC;

  @override
  void onInit() {
    super.onInit();
    animationC = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void onClose() {
    animationC.dispose();
    super.onClose();
  }
}
