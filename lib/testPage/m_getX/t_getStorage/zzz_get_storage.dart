import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import './routes/app_page.dart';
import './pages/login.dart';
import './pages/home.dart';

import 'controllers/auth_c.dart';
import 'controllers/login_c.dart';

void main(List<String> args) async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final loginController = Get.put(LoginController());
  final authcontroller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authcontroller.autoLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(() => GetMaterialApp(
                home: authcontroller.isAuth.isTrue ? HomePage() : LoginPage(),
                getPages: AppPage.pages,
              ));
        }
        return const MaterialApp(
            home: Scaffold(
                body: Center(
          child: CircularProgressIndicator(),
        )));
      },
    );
  }
}
