// ======= navigation
// 1. push (ditumpuk)
// 2. push replacement (dibuang)

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'testPage/m_getX/f_navigation/b_pagesWithname/page1.dart';
import 'testPage/m_getX/f_navigation/b_pagesWithname/routes/page_routes.dart';

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
