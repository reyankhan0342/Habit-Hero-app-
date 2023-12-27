import 'package:flutter/material.dart';

import 'dart:math';

import 'package:path_drawing/path_drawing.dart';

class RightPainter2 extends CustomPainter {
  final ImageProvider lineImageProvider;

  RightPainter2(this.lineImageProvider);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final List<double> arcDashPattern = [230, 10];

    final double arcStartAngle = -pi / 2;
    final double arcSweepAngle = pi;
    final Rect arcRect = Rect.fromCircle(
      center: Offset(size.width * 0.74, size.height * 0.54),
      radius: size.height * 0.868,
    );
    final Path arcPath = Path()
      ..addArc(arcRect, arcStartAngle, arcSweepAngle);
    final dashedArcPath = dashPath(arcPath,
        dashArray: CircularIntervalList<double>(arcDashPattern));
    canvas.drawPath(dashedArcPath, paint);

    final List<double> lineDashPattern = [175];
    Paint paints = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    double centerX = size.width * 0.43;
    double centerY = size.height * 1.41;
    double radius = size.height * 0.87;
    double startX = centerX + radius * 1.6;
    double startY = centerY;
    double endX = centerX - radius / 0.6;
    double endY = centerY;
    final Path linePath = Path()
      ..moveTo(startX, startY)
      ..lineTo(endX, endY);
    final dashedLinePath = dashPath(linePath,
        dashArray: CircularIntervalList<double>(lineDashPattern));
    canvas.drawPath(dashedLinePath, paints);

    // Load and draw the image on the line
    lineImageProvider.resolve(ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo image, bool synchronousCall) {
          double imageX = (startX + endX) / 1.9 - image.image.width / 1.5;
          double imageY = (startY + endY) / 2 - image.image.height / 2;
          canvas.drawImage(image.image, Offset(imageX, imageY), paint);
        },
      ),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
