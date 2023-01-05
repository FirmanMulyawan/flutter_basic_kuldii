import 'package:get/get.dart';

import '../controllers/myc.dart';

class MyB implements Bindings {
  @override
  void dependencies() {
    Get.put(MyC());
  }
}
