/*
Practice Question 2: Custom Shape Drawing with CustomPaint

Task Description:
Develop a Flutter application featuring a CustomPaint widget that draws a simple shape, like a triangle. Implement user interaction allowing the user to change the color of the shape through a set of predefined color options.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox( //need to specify the dimensions within which the shape will be drawn
        width: 200,
        height: 200,
        child: CustomPaint(
          painter: TrianglePainter(100, Colors.green),
        ),
      )),
    );
  }
}

class TrianglePainter extends CustomPainter {
  TrianglePainter(this.sideLength, this.color);

  double sideLength;
  Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style =
          PaintingStyle.fill; //fill the drawn shape, rather than outlining it

    var path = Path();

// Move the path to the starting point of the triangle
    path.moveTo(size.width / 2, 0);

// Draw line to the second point of the triangle
    path.lineTo(size.width, size.height);

// Draw line to the third point of the triangle
    path.lineTo(0, size.height);

// Close the path to form a triangle
    path.close();

// Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
