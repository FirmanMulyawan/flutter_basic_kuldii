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
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 125,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text('Sliver Grid'),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [
          //       Container(
          //         width: 100,
          //         height: 100,
          //         color: Colors.redAccent,
          //       ),
          //     ],
          //   ),
          // ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.amber[100 * (index % 9)],
              );
            }, childCount: 50),
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     childAspectRatio: 12 / 7,
            //     crossAxisSpacing: 10,
            //     mainAxisSpacing: 10)
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              // ukuran layar 392 / 100 = 300 + 92 = 4 widget
              // ukuran per widget = 392 / 4 = 98 pixelI
              maxCrossAxisExtent: 100, // ukuran lebar layar (width)
              // crossAxisSpacing: 50
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            childAspectRatio: 12 / 7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(
                color: Colors.redAccent,
              ),
              Container(
                color: Colors.greenAccent,
              ),
              Container(
                color: Colors.blueAccent,
              )
            ],
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 380,
            children: [
              Container(
                color: Colors.yellowAccent,
              ),
              Container(
                color: Colors.pinkAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
