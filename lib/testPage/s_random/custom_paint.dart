import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.amber,
          child: CustomPaint(
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // ==== drawLine
    // Paint linePaint = Paint()
    //       ..color = Colors.blue
    //       ..strokeWidth = 30
    //       // ..style = PaintingStyle.stroke
    //       ..strokeCap = StrokeCap.round
    //     // ..blendMode = BlendMode.colorBurn
    //     // ..strokeJoin = StrokeJoin.round
    //     ;

    // canvas.drawLine(
    //   const Offset(0, 0),
    //   Offset(0, size.height),
    //   linePaint,
    // );
    // canvas.drawLine(
    //   Offset(0, size.height),
    //   Offset(size.width, 0),
    //   linePaint,
    // );
    // canvas.drawLine(
    //   Offset(size.width, 0),
    //   const Offset(0, 0),
    //   linePaint,
    // );

    // ==== drawLine
    var center = Offset(size.width / 2, size.height / 2);
    Paint linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 30
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, size.width / 2, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
