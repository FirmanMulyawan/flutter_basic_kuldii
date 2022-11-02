//  stateless -> constructor -> build()
// statefull
// (1)-> constructor [dijalankan 1 kali]
// (2)-> createState [dijalankan 1 kali]
// (3)-> initState [dijalankan 1 kali]
// (4)-> didChangeDependencies [dijalankan 1 kali]
// (5)-> build [dijalankan selama ada perubahan state]
// (6)-> deactivate [dijalankan ketika state terhapus dengan cara pindah page dengan menggunakan Navigator.pushReplacementNamed]
// (7)-> dispose [dijalankan ketika state terhapus dengan cara pindah page dengan menggunakan Navigator.pushReplacementNamed]
// didUpdateWidget()

import 'package:flutter/material.dart';

import '../../pages/lifecycle_counter_pages.dart';
import '../../pages/lifecycle_other_pages.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      routes: {
        CounterPage.routeName: ((context) => CounterPage()),
        OtherPage.routeName: ((context) => const OtherPage()),
      },
    );
  }
}
