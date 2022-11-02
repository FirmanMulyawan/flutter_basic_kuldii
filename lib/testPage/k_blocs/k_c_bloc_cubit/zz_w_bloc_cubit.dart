// cubit merupakan sebuah class yang mengekstensi blocBase
// cubit merupakan bagian kecil dari bloc
// cubit digunakan untuk melakukan hal sederhana

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './counter_cubit.dart';

void main(List<String> args) {
  runApp(const FlutterBloc());
}

class FlutterBloc extends StatelessWidget {
  const FlutterBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (context) => CounterCubit(), child: const CounterPage()),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(child: Text('$count')),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
