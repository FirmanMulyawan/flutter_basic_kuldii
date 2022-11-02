import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_item.dart';
import '../providers/all_products.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productdata = Provider.of<Products>(context);

    final allProduct = productdata.allproducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProduct.length,
      // itemBuilder: (ctx, i) => ChangeNotifierProvider(
      //   create: (context) => allProduct[i],
      //   child: const ProductItem(),
      // ),

      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // create: (context) => allProduct[i],
        value: allProduct[i],
        child: const ProductItem(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
