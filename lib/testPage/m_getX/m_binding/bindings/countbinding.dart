import 'package:get/get.dart';
import '../controllers/countc.dart';

class CountB implements Bindings {
  @override
  void dependencies() {
    Get.put(CountC());
  }
}
