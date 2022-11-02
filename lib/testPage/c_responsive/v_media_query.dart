import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main(List<String> args) {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyMediaQuery());
}

class MyMediaQuery extends StatelessWidget {
  const MyMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MediaHomeApp(),
    );
  }
}

class MediaHomeApp extends StatelessWidget {
  const MediaHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;
    final mediaQuerywidth = MediaQuery.of(context).size.width;

    final myAppBar = AppBar(title: const Text('Media Query'));
    final bodyHeight = mediaQueryheight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        appBar: myAppBar,
        body: Center(
          child: (isLandscape)
              ? Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.5,
                      width: mediaQuerywidth,
                      color: Colors.amber,
                    ),
                    Container(
                      height: bodyHeight * 0.5,
                      color: Colors.red,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: ((context, index) {
                            return GridTile(
                                child: Container(
                                    color: Color.fromARGB(
                                        255,
                                        Random().nextInt(156),
                                        Random().nextInt(156),
                                        Random().nextInt(156))));
                          }),
                          itemCount: 100),
                    )
                  ],
                )
              : Column(
                  children: [
                    Container(
                      height: bodyHeight * 0.3,
                      width: mediaQuerywidth,
                      color: Colors.amber,
                    ),
                    Container(
                      height: bodyHeight * 0.7,
                      color: Colors.red,
                      child: ListView.builder(
                          itemBuilder: ((context, index) {
                            return const ListTile(
                              leading: CircleAvatar(),
                              title: Text('Hallo Semua'),
                            );
                          }),
                          itemCount: 100),
                    )
                  ],
                ),
        ));
  }
}
