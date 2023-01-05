import 'package:get/get.dart';

class CounterControllerSimple extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}
