import 'package:flutter/material.dart';

class CustomLeagusRow extends StatelessWidget {
  final AssetImage image1;
  final AssetImage image2;
  final Text title1;
  final AssetImage image3;
  final Text xp;
  final Text count;
  final Text star;

  CustomLeagusRow({
    required this.image1,
    required this.image2,
    required this.title1,
    required this.image3,
    required this.xp,
    required this.count,
    required this.star,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset(image1.assetName, width: size.width*0.04),
          ),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Image.asset(image2.assetName, width: size.width*0.08),
          ),
          SizedBox(width: 7),
          title1,
          SizedBox(width: 25),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Image.asset(image3.assetName, width: size.width*0.04,
                height: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: star,
          ),
          SizedBox(width: 14),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child:xp,
          ),
          SizedBox(width: 7,),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: count,
          ),

        ],
      ),
    );
  }
}
