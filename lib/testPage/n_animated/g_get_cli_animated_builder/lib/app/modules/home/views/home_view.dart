import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: AnimatedBuilder(
        animation: controller.animationC,
        child: Container(
          // width: 200.0,
          // height: 200.0,
          // scale
          width: 100.0,
          height: 100.0,
          color: Colors.green,
          child: const Center(
            child: Text('Whee!'),
          ),
        ),
        builder: (_, Widget? child) {
          // return Transform.rotate(
          //   angle: controller.animationC.value * 2.0 * pi,
          //   child: child,
          // );
          return Transform.scale(
            scale: controller.animationC.value * 2.0,
            child: child,
          );
        },
      )),
    );
  }
}
