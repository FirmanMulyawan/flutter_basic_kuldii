import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'testPage/m_getX/p_get_connect/routes/app_pages.dart';
import 'testPage/m_getX/p_get_connect/pages/home_page.dart';

import 'testPage/m_getX/p_get_connect/controllers/users_c.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final userC = Get.put(UsersC());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppPages.pages,
    );
  }
}
