// ======= navigation
// 1. push (ditumpuk)
// 2. push replacement (dibuang)

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page1.dart';

void main(List<String> args) {
  runApp(const MyAppNavigation());
}

class MyAppNavigation extends StatelessWidget {
  const MyAppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: PageSatu(),
    );
  }
}
