import 'package:flutter/material.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class BottomNavCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppPallete.backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, size.height);
    path.quadraticBezierTo(0, 0, 2, size.height * 0.2);
    path.quadraticBezierTo(0, 0, size.height * 0.3, 0);
    path.quadraticBezierTo(size.width * 0.2, 0, size.width * .355, 0);
    path.quadraticBezierTo(size.width * 0.39, 2, size.width * 0.41, 30);
    path.arcToPoint(Offset(size.width * 0.59, 30),
        radius: Radius.circular(size.width * 0.10), clockwise: false);
    path.quadraticBezierTo(size.width * 0.61, 2, size.width * 0.645, 0);
    path.quadraticBezierTo(
        size.width * 0.8, 0, size.width - (size.height * 0.3), 0);
    path.quadraticBezierTo(size.width, 0, size.width - 2, size.height * 0.2);
    path.quadraticBezierTo(size.width, 0, size.width, size.height);
    // path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
