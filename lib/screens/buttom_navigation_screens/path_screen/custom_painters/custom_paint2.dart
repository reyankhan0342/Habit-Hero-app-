import 'package:flutter/material.dart';

import 'dart:math';
import 'package:path_drawing/path_drawing.dart';
class LeftPainter extends CustomPainter {
  final ImageProvider lineImageProvider;


  LeftPainter(this.lineImageProvider,);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final List<double> arcDashPattern = [100,0];

    final double arcStartAngle = pi /2;
    final double arcSweepAngle = pi;
    final Rect arcRect = Rect.fromCircle(
      center: Offset(size.width * 0.1, size.height * 0.55),
      radius: size.height * 0.858,
    );
    final Path arcPath = Path()..addArc(arcRect, arcStartAngle, arcSweepAngle);
    final dashedArcPath = dashPath(arcPath,
        dashArray: CircularIntervalList<double>(arcDashPattern));
    canvas.drawPath(dashedArcPath, paint);

    final List<double> lineDashPattern = [175];
    Paint paints = Paint()
      ..color = Colors.green
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
    double centerX = size.width * 0.29;
    double centerY = size.height * 1.41;
    double radius = size.height * 0.87;
    double startX = centerX + radius * 1.7;
    double startY = centerY;
    double endX = centerX - radius / 1.0;
    double endY = centerY;
    final Path linePath = Path()
      ..moveTo(startX, startY)
      ..lineTo(endX, endY);
    final dashedLinePath = dashPath(linePath,
        dashArray: CircularIntervalList<double>(lineDashPattern));
    canvas.drawPath(dashedLinePath, paints);

    // Load and draw the image on th
    lineImageProvider.resolve(ImageConfiguration()).addListener(
      ImageStreamListener(
            (ImageInfo img, bool synchronousCall) {
          double imageX = (startX + endX) / 13 - img.image.width / 0.6;
          double imageY = (startY + endY) / 4 - img.image.height / 2;
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






// import 'package:path_drawing/path_drawing.dart';

// class LeftPainter extends CustomPainter {
//   final ImageProvider lineImageProvider;
//
//   LeftPainter(this.lineImageProvider);
//
//   @override
//   void paint(Canvas canvas, Size size) async {
//     Paint paint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 2.0
//       ..style = PaintingStyle.stroke;
//
//     final List<double> arcDashPattern = [10, 10];
//
//     final double arcStartAngle = pi / 0.99;
//     final double arcSweepAngle = pi/2.2;
//     final Rect arcRect = Rect.fromCircle(
//       center: Offset(size.width * 0.0, size.height * 0.55),
//       radius: size.height * 0.858,
//     );
//     final Path arcPath = Path()..addArc(arcRect, arcStartAngle, arcSweepAngle);
//     final dashedArcPath = dashPath(arcPath,
//         dashArray: CircularIntervalList<double>(arcDashPattern));
//     canvas.drawPath(dashedArcPath, paint);
//
//     final List<double> lineDashPattern = [0, 0];
//
//     double centerX = size.width * 0.0;
//     double centerY = size.height * 0.5;
//     double radius = size.height * 0.3;
//     double startX = centerX + radius * 0;
//     double startY = centerY;
//     double endX = centerX - radius / 1.4;
//     double endY = centerY;
//
//     final Path linePath = Path()
//       ..moveTo(startX, startY)
//       ..lineTo(endX, endY);
//     final dashedLinePath = dashPath(linePath,
//         dashArray: CircularIntervalList<double>(lineDashPattern));
//     canvas.drawPath(dashedLinePath, paint);
//
//     // Load and draw the image on the line
//     lineImageProvider.resolve(ImageConfiguration()).addListener(
//       ImageStreamListener(
//             (ImageInfo image, bool synchronousCall) {
//           double imageX = (startX + endX) /2  - image.image.width / 0.5;
//           double imageY = (startY + endY) / 2 - image.image.height / 12.5;
//           // Adjust the division factors (0.5 and 1.5) based on your needs
//           canvas.drawImage(image.image, Offset(imageX, imageY), paint);
//         },
//       ),
//     );
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }



