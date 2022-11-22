import 'package:get/get.dart';
import '../pages/home.dart';
import '../pages/detail.dart';
import '../pages/product.dart';

import './routes_name.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => const HomePageDynamicUrl()),
    GetPage(name: RouteName.product, page: () => const Productpage()),
    // GetPage(name: '/product/:id/:name', page: () => const DetailPage()),
    GetPage(name: '${RouteName.product}/:id?', page: () => const DetailPage()),
  ];
}
