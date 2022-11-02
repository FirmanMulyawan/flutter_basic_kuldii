import 'package:flutter/material.dart';

import '../widget/lifecycle_widget_counter.dart';

class CounterPage extends StatefulWidget {
  static const routeName = '/counter-page';

  CounterPage({super.key}) {
    print('===========');
    print('constructor counter page');
  }
  // const CounterPage({super.key});

  @override
  State<CounterPage> createState() {
    // print('create state()');
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   print('initstate');
  //   // tidak bisa menggunakan context
  // }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    int numberState = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
    // Map dataResponse = (json.decode(hasilGetData.body) ?? {}) as Map;

    counter = numberState;
    super.didChangeDependencies();
    // bisa menggunakan context
  }

  // @override
  // void didUpdateWidget(covariant CounterPage oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   print('didUpdateWidget');
  // }

  // @override
  // void deactivate() {
  //   print('deactivate');
  //   super.deactivate();
  // }

  // @override
  // void dispose() {
  //   print('dispose');
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conunter Page'),
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
