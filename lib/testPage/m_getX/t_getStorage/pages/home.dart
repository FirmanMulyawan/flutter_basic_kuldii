import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_c.dart';
import '../controllers/login_c.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final login = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Get.find<AuthController>().logout(login.rememberme.value),
        child: const Icon(Icons.logout),
      ),
    );
  }
}
