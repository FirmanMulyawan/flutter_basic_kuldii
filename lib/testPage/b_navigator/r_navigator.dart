import 'package:flutter/material.dart';
import '../../pages/page_satu.dart';

void main(List<String> args) {
  runApp(const MyAppR());
}

class MyAppR extends StatelessWidget {
  const MyAppR({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageSatu(),
    );
  }
}
