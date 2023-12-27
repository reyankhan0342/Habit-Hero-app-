// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:habit_hero_2_app/screens/buttom_navigation_screens/path_screen/video_screen.dart';


class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                alignment: Alignment.topLeft,
                image: AssetImage(
                  "assets/images/exercises_images/img_3.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 65.0,
            left: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 90, top: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffEDD6C1),
                    ),
                    child: Image.asset(
                      'assets/icons/cross.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 48),
                  height: 290,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32.0),
                        topLeft: Radius.circular(32)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 60,
                            height: 3.3,
                            decoration: BoxDecoration(
                              color: Color(0xffEDD6C1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                            ),

                            // CircleAvatar(
                            //   radius: 20,
                            //   backgroundImage: AssetImage('assets/p3.png'),
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Julia A.",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "FITNESS INSTRUCTOR",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Morning refresh",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffF2C94C),
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Morning workout with elements of cardio and \n stretching. Suitable for all ages..",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            StartScreenButton(
                              text: "BACK",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            StartScreenButton(
                              text: "CARDIO",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            StartScreenButton(
                              text: "SHOULDERS",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/img_27.png",
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "MEDIUM",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/icons/img_28.png",
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "10 MINUTES",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoScreen()));
                      },
                      child: Image.asset(
                        "assets/icons/img_56.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
              ])),
        ],
      ),
    );
  }
}

class StartScreenButton extends StatelessWidget {
  final text;
  StartScreenButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
        child: Text(
          text,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
