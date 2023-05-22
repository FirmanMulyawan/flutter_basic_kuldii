import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final DecorationTween decorationTween = DecorationTween(
    // begin: BoxDecoration(
    //   color: const Color(0xFFFFFFFF),
    //   border: Border.all(style: BorderStyle.none),
    //   borderRadius: BorderRadius.circular(60.0),
    //   boxShadow: const <BoxShadow>[
    //     BoxShadow(
    //       color: Color(0x66666666),
    //       blurRadius: 10.0,
    //       spreadRadius: 3.0,
    //       offset: Offset(0, 6.0),
    //     ),
    //   ],
    // ),
    // end: BoxDecoration(
    //   color: const Color(0xFFFFFFFF),
    //   border: Border.all(
    //     style: BorderStyle.none,
    //   ),
    //   borderRadius: BorderRadius.zero,
    //   // No shadow.
    // ),
    begin: BoxDecoration(
        color: Colors.amber, borderRadius: BorderRadius.circular(0)),
    end: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(100)
        // No shadow.
        ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween.animate(_controller),
          child: Container(
            width: 200,
            height: 200,
            // color: Colors.black12,
            padding: const EdgeInsets.all(50),
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
