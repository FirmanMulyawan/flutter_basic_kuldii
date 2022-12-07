import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './routes/app_pages.dart';
import './pages/home_page.dart';

import './controllers/users_c.dart';

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
