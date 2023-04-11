import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var hidden = true.obs;
  var rememberme = false.obs;

  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;

  @override
  void onInit() async {
    super.onInit();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();

    final box = GetStorage();
    if (box.read('dataUser') != null) {
      final data = box.read('dataUser') as Map<String, dynamic>;
      emailcontroller.text = data['email'];
      passwordcontroller.text = data['password'];
      rememberme.value = data['rememberme'];
    }
  }

  @override
  void onClose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.onClose();
  }
}
