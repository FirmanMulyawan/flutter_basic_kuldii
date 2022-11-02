import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyBlocListener());
}

class MyBlocListener extends StatefulWidget {
  const MyBlocListener({super.key});

  @override
  State<MyBlocListener> createState() => _MyBlocListenerState();
}

class _MyBlocListenerState extends State<MyBlocListener> {
  bool isDark = false;

  final ThemeData dark = ThemeData.dark();

  final ThemeData light = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => ThemeBloc()),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<CounterBloc, int>(
              listener: (context, state) {
                if (state > 10) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('lebih dari 10'),
                    duration: Duration(milliseconds: 500),
                  ));
                }
                if (state % 1 == 0) {
                  setState(() {
                    isDark = !isDark;
                  });
                }
              },
            ),
          ],
          child: BlocBuilder<ThemeBloc, bool>(
            builder: (context, state) => MaterialApp(
              theme: state == isDark ? dark : light,
              home: const HomePage(),
            ),
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
        actions: [
          IconButton(
              onPressed: () => context.read<ThemeBloc>().changeTheme(),
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: BlocListener<CounterBloc, int>(
          listener: (context, state) {
            // if (state > 10) {
            //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //     content: Text('lebih dari 10'),
            //     duration: Duration(milliseconds: 500),
            //   ));
            // }
          },
          child: BlocBuilder<CounterBloc, int>(
            builder: (context, state) => Text(
              "$state",
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<CounterBloc>().increment()),
    );
  }
}

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  void increment() => emit(state + 1);
  // void increment()=> emit(state +1);
}

class ThemeBloc extends Cubit<bool> {
  ThemeBloc() : super(false);

  void changeTheme() => emit(!state);
  // void increment()=> emit(state +1);
}
