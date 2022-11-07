// ========= state manager getx
// 1. reactive (Obx & GetX)
// 2. simple (GetBuilder)

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './models/orang.dart';

void main(List<String> args) {
  runApp(MyAppX());
}

class MyAppX extends StatelessWidget {
  MyAppX({super.key});
  // var count = 0.obs;

  // void add() {
  //   count++;
  // }

  var orang = Orang(nama: "joni", umur: 40).obs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            // "angka $count",
            "nama saya ${orang.value.nama}",
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // add();
        // orang.nama.value = orang.nama.value.toUpperCase();
        orang.update((_) {
          orang.value.nama = orang.value.nama.toString().toUpperCase();
        });
      }),
    ));
  }
}
