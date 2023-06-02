// https://medium.com/flutter-community/flutter-custom-clipper-28c6d380fdd6
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.grey,
            child: const FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // ======= lineTo
    // Path path = Path()
    //   ..lineTo(0, size.height)
    //   ..lineTo(size.width * 0.5, size.height)
    //   ..close();

    // Path path = Path()
    //   ..lineTo(0, size.height)
    //   ..lineTo(size.width * 0.5, size.height)
    //   ..lineTo(size.width, size.height * 0.5)
    //   ..lineTo(size.width * 0.5, 0)
    //   ..close();

    // ======= moveTo
    // Path path = Path()
    //   ..moveTo(size.width * 0.75, 0)
    //   ..lineTo(0, size.width)
    //   ..lineTo(size.width, size.height)
    //   ..close();

    // ======= quadraticBezierTo
    // var controlPoint = Offset(size.width / 2, size.height / 2);
    // var endpoint = Offset(size.width, size.height);

    // Path path = Path()
    //   ..moveTo(size.width / 2, 0)
    //   ..lineTo(0, size.height)
    //   ..quadraticBezierTo(
    //       controlPoint.dx, controlPoint.dy, endpoint.dx, endpoint.dy)
    //   ..close();

    // ======= cubicTo
    // var controlPoint1 = Offset(50, size.height - 100);
    // var controlPoint2 = Offset(size.width - 50, size.height);
    // var endPoint = Offset(size.width, size.height - 50);

    // Path path = Path()
    //   ..moveTo(size.width / 2, 0)
    //   ..lineTo(0, size.height - 50)
    //   ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
    //       controlPoint2.dy, endPoint.dx, endPoint.dy)
    //   ..close();

    // ======= arcToPoint
    // double radius = 20;

    // Path path = Path()
    //   ..moveTo(radius, 0)
    //   ..lineTo(size.width - radius, 0)
    //   ..arcToPoint(Offset(size.width, radius))
    //   ..lineTo(size.width, size.height - radius)
    //   ..arcToPoint(Offset(size.width - radius, size.height),
    //       radius: Radius.circular(radius))
    //   ..lineTo(radius, size.height)
    //   ..arcToPoint(Offset(0, size.height - radius),
    //       radius: Radius.circular(radius), clockwise: false)
    //   ..lineTo(0, radius)
    //   ..arcToPoint(Offset(radius, 0), radius: const Radius.elliptical(40, 20))
    //   ..close();

    // ======= arcTo
    // double radius = 50;

    // Path path = Path()
    //   ..lineTo(size.width - radius, 0)
    //   ..arcTo(
    //       Rect.fromPoints(Offset(size.width - radius, 0),
    //           Offset(size.width, radius)), // Rect
    //       1.5 * pi, // Start engle
    //       0.5 * pi, // Sweep engle
    //       true) // direction clockwise
    //   ..lineTo(size.width, size.height - radius)
    //   ..arcTo(
    //       Rect.fromCircle(
    //           center: Offset(size.width - radius, size.height - radius),
    //           radius: radius),
    //       0,
    //       0.5 * pi,
    //       false)
    //   ..lineTo(radius, size.height)
    //   ..arcTo(Rect.fromLTRB(0, size.height - radius, radius, size.height),
    //       0.5 * pi, 0.5 * pi, false)
    //   ..lineTo(0, radius)
    //   ..arcTo(const Rect.fromLTWH(0, 0, 70, 100), 1 * pi, 0.5 * pi, false)
    //   ..close();

    // ======= addRect
    // Path path = Path()
    //   ..addRect(Rect.fromPoints(const Offset(0, 0), const Offset(60, 60)))
    //   ..addRect(Rect.fromLTWH(0, size.height - 50, 50, 50))
    //   ..addRect(Rect.fromCircle(
    //       center: Offset(size.width / 2, size.height / 2), radius: 20))
    //   ..close();

    // ======= addRRect
    // double radius = 10;

    // Path path = Path()
    //   ..addRRect(RRect.fromLTRBR(0, 0, 60, 60, Radius.circular(radius)))
    //   ..addRRect(RRect.fromRectAndRadius(
    //       Rect.fromLTWH(0, size.height - 50, 50, 50), Radius.circular(radius)))
    //   ..addRRect(RRect.fromRectAndCorners(
    //       Rect.fromCircle(
    //           center: Offset(size.width / 2, size.height / 2), radius: 30),
    //       topLeft: Radius.circular(radius)))
    //   ..close();

    // ======= addOval
    // Path path = Path()
    //   ..addOval(Rect.fromPoints(const Offset(0, 0), const Offset(60, 60)))
    //   ..addOval(Rect.fromLTWH(0, size.height - 50, 100, 50))
    //   ..addOval(Rect.fromCircle(
    //       center: Offset(size.width / 2, size.height / 2), radius: 20))
    //   ..close();

    // ======= addPolygon
    // var points = [
    //   Offset(size.width / 2, 0), // point p1
    //   Offset(0, size.height / 2), // point p2
    //   Offset(size.width / 2, size.height), // point p3
    //   Offset(size.width, size.height / 2) // point p4
    // ];

    // Path path = Path()
    //   ..addPolygon(points, false)
    //   ..close();

    // ======= addPath
    // Path path1 = Path()
    //   ..lineTo(0, size.height)
    //   ..lineTo(size.width / 2, size.height)
    //   ..lineTo(0, 0);

    // Path path2 = Path()
    //   ..lineTo(size.width / 2, size.height)
    //   ..lineTo(size.width / 2, 0)
    //   ..lineTo(0, 0);

    // path1.addPath(path2, Offset(size.width / 2, 0));

    // return path1;

    // ======= relativeLineTo
    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..relativeLineTo(50, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
