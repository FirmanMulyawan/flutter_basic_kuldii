import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyExpanded());
}

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeExpanded(),
    );
  }
}

class HomeExpanded extends StatelessWidget {
  const HomeExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible and Expanded'),
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            // fit: FlexFit.tight,
            flex: 1, // flex ngaruh hanya di lanscape
            child: Container(
              height: 100,
              color: Colors.red,
              child: const Text('text 1'),
            ),
          ),
          Flexible(
            // fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.green,
              child: const Text('text 2 - sedikit'),
            ),
          ),
          Expanded(
            // Expanded otomatis FlexFit.tight
            // fit: FlexFit.tight,
            // flex: 1,
            child: Container(
              height: 100,
              color: Colors.amber,
              child: const Text('text 3'),
            ),
          ),
        ],
      ),
    );
  }
}
