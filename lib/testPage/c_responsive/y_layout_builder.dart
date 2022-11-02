import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyLayout());
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeLayout(),
    );
  }
}

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final widthSApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(title: const Text("Layout Builder"));

    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthSApp,
        height: heightBody * 0.9,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(widthSApp, heightBody),
            MyContainer(widthSApp, heightBody),
            MyContainer(widthSApp, heightBody),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  final double heightApp;

  const MyContainer(this.widthApp, this.heightApp, {super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: widthApp * 0.25,
    //   height: heightApp * 0.1,
    //   color: Colors.amber,
    // );

    return LayoutBuilder(
      builder: (contex, constrains) {
        return Container(
          width: widthApp * 0.25,
          height: constrains.maxHeight * 0.5,
          color: Colors.amber,
        );
      },
    );
  }
}
