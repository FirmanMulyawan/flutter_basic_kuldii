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
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 150,
            // collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text('Title AppBar'),
            ),
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: MyClass(
                  minExtent: 100, maxExtent: 150, title: "Menu Makanan")),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'Menu Item Makanan- ${index + 1}',
                      style: const TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              );
            },
            childCount: 10,
          )),
          SliverPersistentHeader(
              pinned: true,
              delegate: MyClass(
                  minExtent: 100, maxExtent: 150, title: "Menu Minuman")),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'Menu Item Minuman - ${index + 1}',
                      style: const TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              );
            },
            childCount: 20,
          )),
        ],
      ),
    );
  }
}

class MyClass extends SliverPersistentHeaderDelegate {
  MyClass(
      {required this.title, required this.maxExtent, required this.minExtent});

  final double minExtent;
  final double maxExtent;
  final String title;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // ini adalah widget yang akan di build pada persistent widget
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          'https://picsum.photos/id/100/1000',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black54])),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  // @override
  // double get maxExtent => 200;

  // @override
  // double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
