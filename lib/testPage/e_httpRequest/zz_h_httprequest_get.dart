import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

// import './pages/http_get_stateful_screen.dart';
import '../../pages/http_get_provider_screen.dart';
import '../../modelsHttp/get_provider_model.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeStateful(),
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: const HomeProvider(),
      ),
    );
  }
}
