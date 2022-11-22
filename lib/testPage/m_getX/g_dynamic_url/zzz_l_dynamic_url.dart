import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './pages/home.dart';
import './routes/app_pages.dart';

void main(List<String> args) {
  runApp(const MyDynamicURL());
}

class MyDynamicURL extends StatelessWidget {
  const MyDynamicURL({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePageDynamicUrl(),
      getPages: AppPages.pages,
    );
  }
}
