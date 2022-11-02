import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});

  // final List<Product> loadedProducts = List.generate(
  //   25,
  //   (index) {
  //     return Product(
  //       id: "id_${index + 1}",
  //       title: "Product ${index + 1}",
  //       description: 'Ini adalah deskripsi produk ${index + 1}',
  //       price: 10 + Random().nextInt(100).toDouble(),
  //       imageUrl: 'https://picsum.photos/id/$index/200/300',
  //     );
  //   },
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      // body: ProductGrid(loadedProducts: loadedProducts),
      body: const ProductGrid(),
    );
  }
}
