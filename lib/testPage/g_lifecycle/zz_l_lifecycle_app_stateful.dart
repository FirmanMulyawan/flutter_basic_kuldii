import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyappLifecycle());
}

class MyappLifecycle extends StatelessWidget {
  const MyappLifecycle({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageLifeCycle(),
    );
  }
}

class HomePageLifeCycle extends StatefulWidget {
  const HomePageLifeCycle({super.key});

  @override
  State<HomePageLifeCycle> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePageLifeCycle>
    with WidgetsBindingObserver {
  int number = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
    if (state == AppLifecycleState.inactive) {
      setState(() {
        number = 99;
      });
    } else if (state == AppLifecycleState.paused) {
    } else if (state == AppLifecycleState.detached) {
    } else if (state == AppLifecycleState.resumed) {}

    super.didChangeAppLifecycleState(state);
  }

  // @override
  // void didChangeDependencies() {
  //   print(number);
  //   super.didChangeDependencies();
  // }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text('$number', style: const TextStyle(fontSize: 35)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
