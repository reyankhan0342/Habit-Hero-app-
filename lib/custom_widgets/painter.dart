// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class DrowingArea {
  Offset point;
  Paint Areapoint;

  DrowingArea({required this.point, required this.Areapoint});
}

class Painter extends StatefulWidget {
  const Painter({super.key});

  @override
  State<Painter> createState() => _PainterState();
}

class _PainterState extends State<Painter> {
  List<DrowingArea> paint = [];

  Color selectColor = Colors.black;
  double stckwidth = 1.0;

  @override
  void initState() {
    super.initState();
    selectColor = Colors.black;
    stckwidth = 2.0;
  }

  void selectedColor() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: selectColor,
              onColorChanged: (color) {
                setState(() {
                  selectColor = color;
                });
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                Color.fromRGBO(138, 35, 135, 1.0),
                Color.fromRGBO(233, 65, 87, 1.0),
                Color.fromRGBO(242, 113, 33, 1.0),
              ]))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: size.width * 0.80,
                    height: size.height * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          )
                        ]),
                    child: GestureDetector(
                      onPanDown: (details) {
                        this.setState(() {
                          paint.add(DrowingArea(
                              point: details.localPosition,
                              Areapoint: Paint()
                                ..strokeCap = StrokeCap.round
                                ..strokeWidth = stckwidth
                                ..isAntiAlias = true
                                ..color = selectColor));
                        });
                      },
                      onPanUpdate: (details) {
                        this.setState(() {
                          paint.add(DrowingArea(
                              point: details.localPosition,
                              Areapoint: Paint()
                                ..strokeCap = StrokeCap.round
                                ..strokeWidth = stckwidth
                                ..isAntiAlias = true
                                ..color = selectColor));
                        });
                      },
                      onPanEnd: (details) {
                        this.setState(() {
                          paint.add(null!);
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: CustomPaint(
                          painter: customPainter(paint, selectColor, stckwidth),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            selectedColor();
                          },
                          icon: Icon(
                            Icons.color_lens,
                            color: selectColor,
                          )),
                      Expanded(
                          child: Slider(
                              min: 1.0,
                              max: 7.1,
                              activeColor: selectColor,
                              value: stckwidth,
                              onChanged: (value) {
                                this.setState(() {
                                  stckwidth = value;
                                });
                              })),
                      IconButton(
                          onPressed: () {
                            this.setState(() {
                              paint.clear();
                            });
                          },
                          icon: Icon(Icons.layers_clear)),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class customPainter extends CustomPainter {
  List<DrowingArea> points;

  Color color;
  double stockwidth;

  customPainter(this.points, this.color, this.stockwidth);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, backgroundPaint);

    for (int x = 0; x < points.length - 1; x++) {
      if (points[x] != null && points[x + 1] != null) {
        Paint paint = points[x].Areapoint;
        canvas.drawLine(points[x].point, points[x + 1].point, paint);
      } else if (points[x] != null && points[x + 1] == null) {
        Paint paint = points[x].Areapoint;
        canvas.drawPoints(PointMode.points, [points[x].point], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
