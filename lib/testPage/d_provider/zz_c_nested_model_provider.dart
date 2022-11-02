// https://pub.dev/packages/provider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider001NestedModel/screens/products_overview_screen.dart';
import '../../provider001NestedModel/screens/product_detail_screen.dart';
import '../../provider001NestedModel/providers/all_products.dart';

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

// class ScreenSementara extends StatelessWidget {
//   ScreenSementara({super.key});
//   List<Text> myList = List.generate(
//       50,
//       (index) => Text(
//             '${index + 1}',
//             style: const TextStyle(fontSize: 35),
//           ));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.green,
//           ),
//           ...myList,
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.amber,
//           )
//         ],
//       ),
//     );
//   }
// }
