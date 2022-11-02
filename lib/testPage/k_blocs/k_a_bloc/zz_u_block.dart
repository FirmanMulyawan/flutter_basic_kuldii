//  bloc (Business Logic Component)
// Bloc merupakan sebuah pola (pattern) untuk management suatu state

import 'package:flutter/material.dart';

import './counter.dart';

void main(List<String> args) {
  runApp(const MyAppBlock());
}

class MyAppBlock extends StatelessWidget {
  const MyAppBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageBlock(),
    );
  }
}

class HomePageBlock extends StatefulWidget {
  const HomePageBlock({super.key});

  @override
  State<HomePageBlock> createState() => _HomePageBlockState();
}

class _HomePageBlockState extends State<HomePageBlock> {
  CounterBloc block = CounterBloc();

  @override
  void dispose() {
    block.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter menggunakan bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: block.output,
                initialData: block.counter,
                builder: (context, snapshot) => Text(
                    "Angka saat ini : ${snapshot.data}",
                    style: const TextStyle(fontSize: 25))),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      block.inputan.add('minus');
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      block.inputan.add('add');
                    },
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
