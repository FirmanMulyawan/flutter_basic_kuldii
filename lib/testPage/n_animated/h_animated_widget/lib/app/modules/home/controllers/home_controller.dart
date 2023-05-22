import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController aniC;

  @override
  void onInit() {
    aniC = AnimationController(duration: Duration(seconds: 3), vsync: this)
      ..repeat(reverse: true);
    // aniC.repeat();
    // aniC.dispose();
    super.onInit();
  }

  @override
  void onClose() {
    aniC.dispose();
    super.onClose();
  }
}
