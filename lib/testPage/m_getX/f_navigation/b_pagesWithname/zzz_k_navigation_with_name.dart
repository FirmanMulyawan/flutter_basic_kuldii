import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page1.dart';
import './routes/page_routes.dart';

void main(List<String> args) {
  runApp(const MyAppNavigation());
}

class MyAppNavigation extends StatelessWidget {
  const MyAppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const PageSatu(),
        // initialRoute: '/',
        // unknownRoute: GetPage(name: '/404', page: () => const PageNotFound()),
        getPages: AppPage.pages);
  }
}
