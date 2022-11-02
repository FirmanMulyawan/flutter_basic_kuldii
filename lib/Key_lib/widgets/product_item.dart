import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductItem extends StatefulWidget {
  const ProductItem(Key key, this.prodId, this.title, this.date)
      : super(key: key);

  final String prodId, title;

  final DateTime date;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  Color? bgColor;

  @override
  void initState() {
    super.initState();
    List<Color> rendomColor = [
      Colors.amber,
      Colors.black,
      Colors.red,
      Colors.green,
      Colors.brown,
      Colors.purple,
      Colors.pink,
      Colors.blue
    ];

    bgColor = rendomColor[Random().nextInt(rendomColor.length)];
  }

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context, listen: false);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: bgColor,
      ),
      title: Text(widget.title),
      subtitle: Text(DateFormat.yMMMEd().format(widget.date)),
      trailing: IconButton(
        onPressed: () => products.deleteProduct(widget.prodId),
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
