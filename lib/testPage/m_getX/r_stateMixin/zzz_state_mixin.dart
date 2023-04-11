import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home.dart';
// import './testPage/m_getX/r_stateMixin/controllers/myc.dart';
import 'bindings/mybinding.dart';

void main(List<String> args) {
  runApp(const MyAppStateMixin());
}

class MyAppStateMixin extends StatelessWidget {
  const MyAppStateMixin({super.key});

  // final c = Get.put(MyC());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePageStateMixin(),
      initialBinding: MyB(),
    );
  }
}
