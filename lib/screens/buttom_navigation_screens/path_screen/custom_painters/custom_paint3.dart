import 'package:flutter/material.dart';

import 'dart:math';
import 'package:path_drawing/path_drawing.dart';
class LeftPainter2 extends CustomPainter {
  final ImageProvider lineImageProvider;
  final ImageProvider lineImageProvider2;

  LeftPainter2(this.lineImageProvider,
      this.lineImageProvider2,);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final List<double> arcDashPattern = [240];

    final double arcStartAngle = pi /2;
    final double arcSweepAngle = pi;
    final Rect arcRect = Rect.fromCircle(
      center: Offset(size.width * 0.1, size.height * 0.54),
      radius: size.height * 0.858,
    );
    final Path arcPath = Path()..addArc(arcRect, arcStartAngle, arcSweepAngle);
    final dashedArcPath = dashPath(arcPath,
        dashArray: CircularIntervalList<double>(arcDashPattern));
    canvas.drawPath(dashedArcPath, paint);

    final List<double> lineDashPattern = [40, 9];
    Paint paints = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
    double centerX = size.width * 0.34;
    double centerY = size.height * 1.40;
    double radius = size.height * 0.84;
    double startX = centerX + radius * 1.4;
    double startY = centerY;
    double endX = centerX - radius / 1.0;
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
          double imageX = (startX + endX) / 13 - image.image.width / 0.6;
          double imageY = (startY + endY) / 4 - image.image.height / 2;
          canvas.drawImage(image.image, Offset(imageX, imageY), paint);
        },
      ),
    );
    lineImageProvider2.resolve(ImageConfiguration()).addListener(
      ImageStreamListener(
            (ImageInfo img, bool synchronousCall) {
          double imageX = (startX + endX) / 2 - img.image.width / 2;
          double imageY = (startY + endY) / 2- img.image.height / 2;
          canvas.drawImage(img.image, Offset(imageX, imageY), paint);
        },
      ),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}









