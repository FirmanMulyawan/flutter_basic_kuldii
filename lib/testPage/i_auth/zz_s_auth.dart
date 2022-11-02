import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../auth_lib/providers/products.dart';
import '../../auth_lib/providers/auth.dart';
import '../../auth_lib/pages/auth_page.dart';
import '../../auth_lib/pages/home_page.dart';

import '../../auth_lib/pages/add_product_page.dart';
import '../../auth_lib/pages/edit_product_page.dart';

// login otomatis
Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AuthProvider(),
        ),
        ChangeNotifierProxyProvider<AuthProvider, Products>(
            create: (context) => Products(),
            update: (context, auth, products) =>
                products!..update(auth.token, auth.userId)),
        // products!..update(auth.token)),

        // ChangeNotifierProvider(
        //   create: (ctx) => Products(),
        // ),
      ],
      builder: (context, child) => Consumer<AuthProvider>(
        builder: (context, auth, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: auth.isAuth
              ? const HomePage()
              : FutureBuilder(
                  future: auth.autoLogin(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Scaffold(
                          body: Center(
                        child: CircularProgressIndicator(),
                      ));
                    }
                    return const LoginPage();
                  },
                ),
          routes: {
            AddProductPage.route: (ctx) => AddProductPage(),
            EditProductPage.route: (ctx) => const EditProductPage(),
          },
        ),
      ),
    );
  }
}
