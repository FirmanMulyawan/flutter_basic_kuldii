// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../pages/lifecycle_other_pages.dart';

class WidgetCounter extends StatefulWidget {
  WidgetCounter({
    Key? key,
    required this.counter,
  }) {
    print('++++++++++++++++++');
    print('constractor widget');
  }

  final int counter;

  @override
  State<WidgetCounter> createState() {
    // print('createState');
    return _WidgetCounterState();
  }
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void initState() {
    super.initState();
    print('initstate');
    // tidak bisa menggunakan context
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
    // bisa menggunakan context
  }

  @override
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('old : ${oldWidget.counter}');
    print('didUpdateWidget');
    print('new : ${widget.counter}');
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build widget');
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '${widget.counter}',
          style: const TextStyle(fontSize: 35),
        ),
        const SizedBox(height: 50),
        OutlinedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, OtherPage.routeName,
                  arguments: widget.counter);
            },
            child: const Text('Go to other page'))
      ]),
    );
  }
}
