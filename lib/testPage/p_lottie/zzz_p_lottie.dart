import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                  height: 250,
                  child: Lottie.asset("assets/lottie/password.json")),
              const SizedBox(height: 20),
              const Text(
                'Masukkan Email kamu di sini, untuk reset password kamu..',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              TextField(
                autocorrect: false,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              const SizedBox(height: 50),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          )),
                      onPressed: () {},
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.black38),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
