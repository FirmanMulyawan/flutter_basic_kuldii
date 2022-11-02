import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  static const nameRoute = '/photo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Page'),
        //  leading: Container()
      ),
      body: const Center(
          child: Text('photo Page', style: TextStyle(fontSize: 50))),
    );
  }
}
