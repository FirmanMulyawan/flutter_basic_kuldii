import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => Counter(), child: const HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text('Provider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(
            builder: (context, value, child) => Text(value.counter.toString(),
                style: const TextStyle(
                  fontSize: 35,
                )),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    counter.minus();
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    counter.add();
                  },
                  icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void add() {
    _counter += 1;
    notifyListeners();
  }

  void minus() {
    _counter -= 1;
    notifyListeners();
  }
}
