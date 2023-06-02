import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
            height: 400.0,
            // viewportFraction: 1,
            viewportFraction: 0.6,
            // aspectRatio: 2 / 7
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            // autoPlayAnimationDuration:
            // initialPage: 3
            // reverse: true
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Center(
                    child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
