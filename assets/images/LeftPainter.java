class LeftPainter extends CustomPainter {
  final ImageProvider lineImageProvider;

  LeftPainter(this.lineImageProvider);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final List<double> arcDashPattern = [10, 10];

    final double arcStartAngle = pi / 2;
    final double arcSweepAngle = pi;
    final Rect arcRect = Rect.fromCircle(
      center: Offset(size.width * 0.0, size.height * 0.55),
      radius: size.height * 0.858,
    );
    final Path arcPath = Path()..addArc(arcRect, arcStartAngle, arcSweepAngle);
    final dashedArcPath = dashPath(arcPath,
        dashArray: CircularIntervalList<double>(arcDashPattern));
    canvas.drawPath(dashedArcPath, paint);

    final List<double> lineDashPattern = [1, 1];

    double centerX = size.width * 0.0;
    double centerY = size.height * 0;
    double radius = size.height * 0;
    double startX = centerX + radius * 0;
    double startY = centerY;
    double endX = centerX - radius / 1.4;
    double endY = centerY;
    final Path linePath = Path()
      ..moveTo(startX, startY)
      ..lineTo(endX, endY);
    final dashedLinePath = dashPath(linePath,
        dashArray: CircularIntervalList<double>(lineDashPattern));
    canvas.drawPath(dashedLinePath, paint);

    // Load and draw the image on the line
    lineImageProvider.resolve(ImageConfiguration()).addListener(
      ImageStreamListener(
            (ImageInfo image, bool synchronousCall) {
          double imageX = (startX + endX) / 2 - image.image.width / 2;
          double imageY = (startY + endY) / 2 - image.image.height / 1.5;
          // Adjust the division factors (0.5 and 1.5) based on your needs
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
