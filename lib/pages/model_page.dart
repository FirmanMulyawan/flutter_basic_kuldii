import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../models01/product.dart';

class MarketPlace extends StatelessWidget {
  final Faker faker = Faker();
  final Random random = Random();

  MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> dumyData = List.generate(100, (index) {
      return Product(
          'https://picsum.photos/id/$index/200',
          faker.food.restaurant(),
          random.nextInt(100000),
          faker.lorem.sentence());
    });

    return Scaffold(
        appBar: AppBar(title: const Text('Market Place')),
        body: GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: dumyData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
            itemBuilder: ((context, index) {
              return GridTile(
                  footer: Container(
                    height: 80,
                    color: Colors.green.withOpacity(0.8),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(dumyData[index].judul,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text('Rp ${dumyData[index].harga}',
                            style: const TextStyle(
                              color: Colors.white,
                            )),
                        Text(dumyData[index].deskripsi,
                            maxLines: 2,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  child: Image.network(dumyData[index].imageURL));
            })));
  }
}
