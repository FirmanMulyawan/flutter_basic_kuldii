import 'package:flutter/material.dart';

import '../../pages/gallery_pages.dart';
import '../../pages/photo_pages.dart';
import '../../pages/routes.dart';

void main(List<String> args) {
  runApp(const MyRoutes());
}

class MyRoutes extends StatelessWidget {
  const MyRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RoutesPage(),
      initialRoute: RoutesPage.nameRoute,
      routes: {
        RoutesPage.nameRoute: (context) => const RoutesPage(),
        GalleryPage.nameRoute: (context) => const RoutesPage(),
        PhotoPage.nameRoute: (context) => const RoutesPage(),
      },
    );
  }
}
