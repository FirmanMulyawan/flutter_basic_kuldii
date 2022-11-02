import 'package:flutter/material.dart';

import './lifecycle_counter_pages.dart';

class OtherPage extends StatelessWidget {
  static const routeName = '/other-page';

  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Page')),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, CounterPage.routeName,
                  arguments: ModalRoute.of(context)?.settings.arguments as int);
            },
            child: const Text('Go to Counter page')),
      ),
    );
  }
}
