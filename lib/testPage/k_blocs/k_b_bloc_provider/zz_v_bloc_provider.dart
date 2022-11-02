import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './counter_bloc_provider.dart';

void main(List<String> args) {
  runApp(const FlutterBloc());
}

class FlutterBloc extends StatelessWidget {
  const FlutterBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBlocProvider(),
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var bloc = BlocProvider.of<CounterBlocProvider>(context, listen: true);
    // ====== read listen: false
    // var bloc = context.read<CounterBlocProvider>();
    // ====== read listen: true
    var bloc = context.watch<CounterBlocProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Provider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBlocProvider, int>(
              builder: (context, state) => Text(
                "Angka saat ini : $state",
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const NewWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      bloc.add('minus');
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      bloc.add('add');
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

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<CounterBlocProvider>(context);
    return Text(bloc.counter.toString());
  }
}
