import './page_dua.dart';
import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: const Center(
          child: Text('Ini Page satu', style: TextStyle(fontSize: 50))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const PageDua();
            }));
          },
          // onPressed: () {
          //   Navigator.of(context)
          //       .pushReplacement(MaterialPageRoute(builder: (context) {
          //     return const PageDua();
          //   }));
          // },
          child: const Icon(Icons.keyboard_arrow_right)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
