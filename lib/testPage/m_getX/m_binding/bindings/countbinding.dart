import 'package:get/get.dart';
import '../controllers/countc.dart';

class CountB implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CountC());
  }
}
