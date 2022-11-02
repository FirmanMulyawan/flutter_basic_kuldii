import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider004MultiProvider/screens/cart_screen.dart';
import '../../provider004MultiProvider/screens/product_detail_screen.dart';
import '../../provider004MultiProvider/screens/products_overview_screen.dart';
import '../../provider004MultiProvider/providers/all_products.dart';
import '../../provider004MultiProvider/providers/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => Cart(),
    //   child: ChangeNotifierProvider(
    //     create: (context) => Products(),
    //     child: MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       title: 'MyShop',
    //       theme: ThemeData(
    //         fontFamily: 'Lato',
    //         colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
    //             .copyWith(secondary: Colors.amber),
    //       ),
    //       home: const ProductsOverviewScreen(),
    //       routes: {
    //         ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
    //       },
    //     ),
    //   ),
    // );

    /// multi provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.amber),
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          CartScreen.routeName: (ctx) => const CartScreen(),
        },
      ),
    );
  }
}
