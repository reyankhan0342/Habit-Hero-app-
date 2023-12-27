import 'package:flutter/material.dart';

class CustomRow1 extends StatelessWidget {
  const CustomRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0,left: 30),
      child: Row(
        children: [
          Text('Morning workout',style: TextStyle(
            fontFamily: 'public',fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,

          ),),

          Container(
            margin: EdgeInsets.only(left: 120),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF2994A), width: 2),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/profile.png')),
            ),
          ),
        ],
      ),
    );
  }
}
