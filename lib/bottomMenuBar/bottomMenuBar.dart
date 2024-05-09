import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = Colors.white
      // const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.7128571);
    path_0.quadraticBezierTo(size.width * 0.2179500, size.height * 0.7123429,
        size.width * 0.2906583, size.height * 0.7127000);
    path_0.cubicTo(
        size.width * 0.3538500,
        size.height * 0.7165571,
        size.width * 0.3730833,
        size.height * 0.5339143,
        size.width * 0.4994167,
        size.height * 0.5403571);
    path_0.cubicTo(
        size.width * 0.6247750,
        size.height * 0.5334714,
        size.width * 0.6477917,
        size.height * 0.7114857,
        size.width * 0.7102583,
        size.height * 0.7121571);
    path_0.cubicTo(
        size.width * 0.7848667,
        size.height * 0.7144714,
        size.width * 0.9281896,
        size.height * 0.7126821,
        size.width * 1.0008333,
        size.height * 0.7128571);
    path_0.quadraticBezierTo(size.width * 0.9999167, size.height * 0.7726143,
        size.width, size.height * 0.9971429);
    path_0.lineTo(size.width * 0.0016667, size.height);
    path_0.lineTo(0, size.height * 0.7128571);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = Colors.white
      // const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
