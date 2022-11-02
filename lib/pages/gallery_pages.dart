import 'package:flutter/material.dart';
import './photo_pages.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const nameRoute = '/gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('gallery Page'), leading: Container()),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('gallery Page', style: TextStyle(fontSize: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('<< Back', style: TextStyle(fontSize: 25))),
              TextButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return const PhotoPage();
                    // }));

                    Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                  },
                  child: const Text('next >>', style: TextStyle(fontSize: 25))),
            ],
          )
        ],
      )),
    );
  }
}
