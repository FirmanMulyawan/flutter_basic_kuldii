import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/all_products.dart';
import '../providers/cart.dart';
import '../widgets/badge.dart';
import './cart_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!
    final product = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
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
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            product.title,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "\$${product.price}",
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            product.description,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Add to chart'),
                  duration: Duration(milliseconds: 500),
                ));
                cart.addCart(product.id, product.title, product.price);
              },
              child: const Text('Add To chart',
                  style: TextStyle(
                    fontSize: 24,
                  ))),
        ],
      ),
    );
  }
}
