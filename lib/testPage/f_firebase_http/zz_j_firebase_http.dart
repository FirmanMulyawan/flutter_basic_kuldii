import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
//
import '../../Firebase_lib/pages/add_player_page.dart';
import '../../Firebase_lib/pages/home_page.dart';
import '../../Firebase_lib/providers/players.dart';
import '../../Firebase_lib/pages/detail_player_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Players(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          AddPlayer.routeName: (context) => AddPlayer(),
          DetailPlayer.routeName: (context) => const DetailPlayer(),
        },
      ),
    );
  }
}
