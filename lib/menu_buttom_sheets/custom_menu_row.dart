import 'package:flutter/material.dart';

class CustomMenuRow extends StatelessWidget {
  final AssetImage image1;
  final Text title1;
  final VoidCallback onTap;

  CustomMenuRow({
    required this.image1,
     required this.onTap,
    required this.title1,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.060,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap:onTap ,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(image1.assetName, width: 20, height: 20),
            ),
            SizedBox(width: 7),
            title1,

          ],
        ),
      ),
    );
  }
}
