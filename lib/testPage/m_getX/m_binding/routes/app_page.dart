import 'package:get/get.dart';

import '../pages/count.dart';
import '../pages/home.dart';

// import '../controllers/countc.dart';
import './route_name.dart';
import '../bindings/countbinding.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => const HomePage()),
    GetPage(
      name: RouteName.count,
      page: () => CountPage(),
      // binding: BindingsBuilder(() {
      //   Get.put(CountC());
      // })
      binding: CountB(),
    ),
  ];
}
