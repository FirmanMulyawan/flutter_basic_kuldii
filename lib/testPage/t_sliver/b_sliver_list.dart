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
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver List"),
              background: FlutterLogo(),
            ),
          ),

          // ===== SliverList & SliverChildListDelegate
          // SliverList(
          //     delegate: SliverChildListDelegate([
          //   Container(
          //     height: 100,
          //     color: Colors.amber,
          //   ),
          //   Container(
          //     height: 100,
          //     color: Colors.red,
          //   ),
          //   Container(
          //     height: 100,
          //     color: Colors.amber,
          //   ),
          //   Container(
          //     height: 100,
          //     color: Colors.red,
          //   ),
          //   Container(
          //     height: 100,
          //     color: Colors.amber,
          //   ),
          //   Container(
          //     height: 100,
          //     color: Colors.red,
          //   )
          // ])),

          // ===== SliverList & SliverChildBuilderDelegate
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              leading: const CircleAvatar(),
              title: Text('data ke - ${index + 1}'),
            );
          }, childCount: 20)),

          // ===== SliverFixedExtentList & SliverChildListDelegate.fixed
          // SliverFixedExtentList(
          //     delegate: SliverChildListDelegate.fixed([
          //       Container(
          //         // height: 100,
          //         color: Colors.amber,
          //       ),
          //       Container(
          //         // height: 100,
          //         color: Colors.red,
          //       ),
          //     ]),
          //     itemExtent: 100),

          // ===== SliverFixedExtentList & SliverChildBuilderDelegate
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: Colors.amber[900],
                );
              }, childCount: 1),
              itemExtent: 200),

          // ===== SliverPrototypeExtentList & SliverChildBuilderDelegate
          SliverPrototypeExtentList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: Colors.red[900],
                );
              }, childCount: 1),
              prototypeItem: const SizedBox(
                height: 100,
              )),

          // ===== SliverList & SliverChildListDelegate
          SliverList(
              delegate: SliverChildListDelegate.fixed([
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              color: Colors.green,
            )
          ])),
        ],
      ),
    );
  }
}
