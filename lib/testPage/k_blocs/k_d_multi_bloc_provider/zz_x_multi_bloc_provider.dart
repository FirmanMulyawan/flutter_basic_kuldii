import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './counter.dart';
import './theme.dart';

void main(List<String> args) {
  runApp(MyMultiBloc());
}

class MyMultiBloc extends StatelessWidget {
  final ThemeData dark = ThemeData.dark();
  final ThemeData light = ThemeData.light();

  MyMultiBloc({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => CounterBloc(),
    //   child: BlocProvider(
    //     create: (context) => ThemeBloc(),
    //     child: BlocBuilder<ThemeBloc, bool>(
    //       builder: (context, state) => MaterialApp(
    //         theme: state ? dark : light,
    //         home: const HomePage(),
    //       ),
    //     ),
    //   ),
    // );

    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => ThemeBloc())
        ],
        child: BlocBuilder<ThemeBloc, bool>(
          builder: (context, state) => MaterialApp(
            theme: state ? dark : light,
            home: const HomePage(),
          ),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Bloc Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) => Text(
                'Angka saat ini : $state',
                style: const TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () => context.read<CounterBloc>().decrement(),
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () => context.read<CounterBloc>().increment(),
                    icon: const Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ThemeBloc>().changeTheme(),
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
