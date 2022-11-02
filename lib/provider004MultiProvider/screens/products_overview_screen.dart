import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';
import '../widgets/badge.dart';
import './cart_screen.dart';
import '../providers/cart.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return Badge(
                value: value.jumlah.toString(),
                child: ch!,
                // child: IconButton(
                //     onPressed: () {
                //       Navigator.of(context).pushNamed(
                //         CartScreen.routeName,
                //       );
                //     },
                //     icon: const Icon(Icons.shopping_cart))
              );
            },
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    CartScreen.routeName,
                  );
                },
                icon: const Icon(Icons.shopping_cart)),
          )
        ],
      ),
      body: const ProductGrid(),
    );
  }
}
