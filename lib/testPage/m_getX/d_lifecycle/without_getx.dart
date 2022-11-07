// ====== lifecycle ada 2
// 1. widget lifecycle
// 2. application lifecycle

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAppLifeCycle());
}

class MyAppLifeCycle extends StatelessWidget {
  const MyAppLifeCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageLifecycle(),
    );
  }
}

class HomePageLifecycle extends StatefulWidget {
  const HomePageLifecycle({super.key});

  @override
  State<HomePageLifecycle> createState() => _HomePageLifecycleState();
}

class _HomePageLifecycleState extends State<HomePageLifecycle> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OtherPage(),
                  )),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(child: CountWidget(count: count)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class CountWidget extends StatefulWidget {
  final int count;

  const CountWidget({Key? key, required this.count}) : super(key: key);

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CountWidget oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('angka ${widget.count}');
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
