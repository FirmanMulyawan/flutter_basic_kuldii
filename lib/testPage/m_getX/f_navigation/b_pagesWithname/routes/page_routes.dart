import 'package:get/get.dart';

import './route_name.dart';
import '../page1.dart';
import '../page2.dart';
import '../page3.dart';
import '../page4.dart';
import '../page5.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.page_1, page: () => const PageSatu()),
    GetPage(name: RouteName.page_2, page: () => const PageDua()),
    GetPage(name: RouteName.page_3, page: () => const PageTiga()),
    GetPage(name: RouteName.page_4, page: () => const PageEmpat()),
    GetPage(name: RouteName.page_5, page: () => const PageLima()),
  ];
}
