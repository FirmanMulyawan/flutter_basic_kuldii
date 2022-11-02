import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// import '../../pages/http_post_stateful_screen.dart';
import '../../modelsHttp/post_provider_model.dart';
import '../../pages/http_post_provider_screen.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyHttp1());
}

class MyHttp1 extends StatelessWidget {
  const MyHttp1({super.key});

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
