import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Dua'),
      ),
      body: const Center(
          child: Text('Ini Page dua', style: TextStyle(fontSize: 50))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.keyboard_arrow_left)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
