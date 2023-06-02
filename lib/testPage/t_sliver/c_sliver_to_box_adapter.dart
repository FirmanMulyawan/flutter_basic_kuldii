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
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text('Sliver To Box'),
            ),
          ),

          // SliverList(
          //     delegate: SliverChildBuilderDelegate((context, index) {
          //   return Column(
          //     children: [
          //       Container(
          //         width: 150,
          //         height: 150,
          //         color: Colors.amber,
          //       ),
          //       Container(
          //         width: 150,
          //         height: 150,
          //         color: Colors.red,
          //       )
          //     ],
          //   );
          // }, childCount: 2))

          // SliverToBoxAdapter(
          //     child: Column(
          //   children: [
          //     Container(
          //       width: 150,
          //       height: 150,
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       width: 150,
          //       height: 150,
          //       color: Colors.red,
          //     )
          //   ],
          // ))

          // SliverToBoxAdapter(
          //     child: Container(
          //   height: 400,
          //   color: Colors.grey,
          //   child: ListView(
          //     padding: EdgeInsets.zero,
          //     children: [
          //       Container(
          //         width: 150,
          //         height: 150,
          //         color: Colors.amber,
          //       ),
          //       Container(
          //         width: 150,
          //         height: 150,
          //         color: Colors.red,
          //       )
          //     ],
          //   ),
          // ))

          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: EdgeInsets.all(8),
          //     child: CircleAvatar(),
          //   ),
          // )

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.pink,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
