import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../checkbox_lib/providers/colors.dart';
import '../../checkbox_lib/pages/home_page.dart';
import '../../checkbox_lib/pages/add_color_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MultiColor(),
      builder: (context, child) => MaterialApp(
        home: const HomePage(),
        routes: {
          HomePage.routeName: (ctx) => const HomePage(),
          AddColorPage.routeName: (ctx) => AddColorPage(),
        },
      ),
    );
  }
}
