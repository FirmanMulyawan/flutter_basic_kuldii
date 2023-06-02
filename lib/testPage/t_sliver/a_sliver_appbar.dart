import 'package:flutter/material.dart';

/// Flutter code sample for SliverAppBar.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Simple';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: const Text('Ini Judul'),
            leading: const Icon(Icons.arrow_back),
            actions: const [
              Icon(Icons.logout),
            ],
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            // flexibleSpace: const Align(
            //     alignment: Alignment.bottomCenter, child: Text('SliverAppBar')),
            expandedHeight: 160.0,
            // elevation: 10,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver AppBar'),
              // background: FlutterLogo(),
              background: Image.network(
                'https://picsum.photos/seed/picsum/200/300',
                fit: BoxFit.cover,
              ),
              // background: Container(color: Colors.amber),
            ),
          ),
          // const SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 20,
          //     child: Center(
          //       child: Text('Scroll to see the SliverAppBar in effect.'),
          //     ),
          //   ),
          // ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: Center(
          //           child: Text('$index', textScaleFactor: 5),
          //         ),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: OverflowBar(
      //       overflowAlignment: OverflowBarAlignment.center,
      //       children: <Widget>[
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('pinned'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _pinned = val;
      //                 });
      //               },
      //               value: _pinned,
      //             ),
      //           ],
      //         ),
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('snap'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _snap = val;
      //                   // Snapping only applies when the app bar is floating.
      //                   _floating = _floating || _snap;
      //                 });
      //               },
      //               value: _snap,
      //             ),
      //           ],
      //         ),
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('floating'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _floating = val;
      //                   _snap = _snap && _floating;
      //                 });
      //               },
      //               value: _floating,
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
