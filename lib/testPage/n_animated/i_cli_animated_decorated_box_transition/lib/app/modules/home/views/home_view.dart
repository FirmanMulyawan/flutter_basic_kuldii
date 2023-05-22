import 'package:flutter/material.dart';

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
        child: DecoratedBoxTransition(
          decoration: controller.decorationTween.animate(controller.animateC),
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(50),
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
