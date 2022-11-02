// tidak ada dispose jadi bakalan bocor
// void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyappLifecycle());
}

class MyappLifecycle extends StatelessWidget {
  const MyappLifecycle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageLifeCycle(),
    );
  }
}

class HomePageLifeCycle extends StatelessWidget with WidgetsBindingObserver {
  HomePageLifeCycle({super.key}) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
