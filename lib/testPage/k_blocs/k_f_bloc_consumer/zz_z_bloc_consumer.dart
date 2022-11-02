import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyAppBlocConsumer());
}

class MyAppBlocConsumer extends StatelessWidget {
  const MyAppBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (context) => CounterBloc(), child: const Homepage()),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocConsumer<CounterBloc, int>(
          buildWhen: (previous, current) {
            // print('previous : $previous --- cur: $current');
            if (current > 5) {
              return true;
            }
            return false;
          },
          listenWhen: (previous, current) {
            print('prev : $previous --- curr: $current');
            if (current > 10) {
              return true;
            }
            return false;
          },
          listener: (context, state) {
            // if (state > 10) {
            //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //       duration: Duration(milliseconds: 300),
            //       content: Text("Di atas 10 lo")));
            // }
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(milliseconds: 300),
                content: Text("Di atas 10 lo")));
          },
          builder: (context, state) {
            return Text(
              "angka $state",
              style: const TextStyle(fontSize: 35),
            );
          },
        ),

        // child: BlocListener<CounterBloc, int>(
        //   listener: (context, state) {
        //     if (state > 10) {
        //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //           duration: Duration(milliseconds: 300),
        //           content: Text("Di atas 10 lo")));
        //     }
        //   },
        //   child: BlocBuilder<CounterBloc, int>(
        //     builder: (context, state) => Text(
        //       "angka $state",
        //       style: const TextStyle(fontSize: 35),
        //     ),
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  void increment() => emit(state + 1);
}
