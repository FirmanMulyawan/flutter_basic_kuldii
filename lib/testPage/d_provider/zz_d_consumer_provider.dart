// https://pub.dev/packages/provider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider003Consumer/screens/products_overview_screen.dart';
import '../../provider003Consumer/screens/product_detail_screen.dart';
import '../../provider003Consumer/providers/all_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.amber),
        ),
        home: const ProductsOverviewScreen(),
        // home: ScreenSementara(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
        },
      ),
    );
  }
}
