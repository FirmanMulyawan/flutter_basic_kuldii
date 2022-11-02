import 'package:flutter/material.dart';
import './gallery_pages.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({super.key});

  static const nameRoute = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(
          child: Text('Home Page', style: TextStyle(fontSize: 50))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //   return const GalleryPage();
          // }));
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
