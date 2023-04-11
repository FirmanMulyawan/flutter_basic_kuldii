import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_c.dart';
import '../controllers/auth_c.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final c = Get.find<LoginController>();
  final auth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: c.emailcontroller,
              autocorrect: false,
              decoration: const InputDecoration(
                  labelText: "Email", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            Obx(() => TextField(
                  controller: c.passwordcontroller,
                  autocorrect: false,
                  obscureText: c.hidden.value,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () => c.hidden.toggle(),
                          icon: c.hidden.isTrue
                              ? const Icon(Icons.remove_red_eye)
                              : const Icon(Icons.remove_red_eye_outlined)),
                      labelText: "password",
                      border: const OutlineInputBorder()),
                )),
            const SizedBox(height: 10),
            Obx(
              () => CheckboxListTile(
                value: c.rememberme.value,
                onChanged: (v) => c.rememberme.toggle(),
                title: const Text("Remember Me"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            ElevatedButton(
                onPressed: () => auth.login(c.emailcontroller.text,
                    c.passwordcontroller.text, c.rememberme.value),
                child: const Text('LOGIN'))
          ],
        ),
      ),
    );
  }
}
