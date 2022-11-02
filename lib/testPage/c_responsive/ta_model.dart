import 'package:flutter/material.dart';

import '../../pages/model_page.dart';

void main(List<String> args) {
  runApp(const ModelApp());
}

class ModelApp extends StatelessWidget {
  const ModelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarketPlace(),
    );
  }
}
