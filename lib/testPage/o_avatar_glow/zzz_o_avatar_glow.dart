import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: AvatarGlow(
            glowColor: Colors.black26,
            endRadius: 100,
            duration: const Duration(milliseconds: 200),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      image: AssetImage('images/image.jpg'))),
            ),
          ),
        ),
      ),
    );
  }
}
