import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import '../models/product.dart';
import './product_item.dart';
import '../providers/all_products.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  // const ProductGrid({
  //   Key? key,
  //   required this.loadedProducts,
  // }) : super(key: key);

  // final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    final productdata = Provider.of<Products>(context);

    final allProduct = productdata.allproducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      // itemCount: loadedProducts.length,
      itemCount: allProduct.length,

      // itemBuilder: (ctx, i) => ProductItem(
      //   loadedProducts[i].id,
      //   loadedProducts[i].title,
      //   loadedProducts[i].imageUrl,
      // ),
      itemBuilder: (ctx, i) => ProductItem(
        allProduct[i].id,
        allProduct[i].title,
        allProduct[i].imageUrl,
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
