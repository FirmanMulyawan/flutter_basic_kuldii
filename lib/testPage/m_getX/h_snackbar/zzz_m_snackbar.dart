import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyAppGetX());
}

class MyAppGetX extends StatelessWidget {
  const MyAppGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePageGet(),
    );
  }
}

class HomePageGet extends StatelessWidget {
  const HomePageGet({super.key});

  // final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('Angka', style: TextStyle(fontSize: 35))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('ini judul', 'ini pesan',
              animationDuration: const Duration(milliseconds: 200),
              duration: const Duration(seconds: 2),
              backgroundColor: Colors.amber,
              backgroundGradient:
                  const LinearGradient(colors: [Colors.purple, Colors.green]),
              borderColor: Colors.red,
              borderWidth: 5,
              // snackPosition: SnackPosition.BOTTOM,
              snackPosition: SnackPosition.TOP, onTap: (_) {
            print('Diklik lohh');
          },
              icon: const Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              shouldIconPulse: false,
              snackStyle: SnackStyle.GROUNDED);
        },
      ),
    );
  }
}
