import 'package:flutter/material.dart' show Border, BorderRadius, BoxDecoration, BuildContext, Center, Color, Container, GestureDetector, StatelessWidget, Text, TextAlign, TextStyle, VoidCallback, Widget;
class CustomSmallButton extends StatelessWidget {

  double width;
  double height;
  final BorderRadius borderRadius;
  final Border border;
  String title;
  Color color;
  VoidCallback onTap;
  TextStyle textStyle;


  CustomSmallButton({
      required this.width,
    required this.height,
    required this.borderRadius,
    required this.border,
    required this.title,
    required this.onTap,
    required this.color,
    required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
         color:color,
         borderRadius:borderRadius,
         border: border,
        ),
        child:Center(
          child: Text(
            title.toString(),style: textStyle,textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
