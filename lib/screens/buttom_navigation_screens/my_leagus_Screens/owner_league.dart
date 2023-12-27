// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../custom_widgets/custom_rows/custom_leagus_row.dart';

class OwnerLeagus extends StatelessWidget {
  const OwnerLeagus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF6EE),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/icons/back.png",
                            width: 40,
                            height: 40,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            "BELLY LEAGUE",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                'Owner: ',
                                style: TextStyle(
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              Text(
                                'Me',
                                style: TextStyle(
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                'Categories:',
                                style: TextStyle(
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              Text(
                                ' All',
                                style: TextStyle(
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(), // Use Spacer widget to push the last widget to the right

                      Image.asset(
                        'assets/icons/img_23.png',
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            //ClickableContainer(),

            Expanded(
              //height: 400,
              child: Stack(
                children: [
                  SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 60),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Image.asset("assets/images/img_18.png"),
                            ),

                            // SvgPicture.asset("assets/crown.svg"),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                                height: 150,
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 48),
                                      height: 66,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 55,
                                      top: 0,
                                      left: 16,
                                      right: 25,
                                      child: SizedBox(
                                        height: 90,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                                'assets/images/profile2.png'),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            // CircleAvatar(
                                            //   radius: 54,
                                            //   child: CircleAvatar(
                                            //     backgroundImage:
                                            //         AssetImage('assets/111.png'),
                                            //     child: Align(
                                            //       alignment: Alignment.topRight,
                                            //       child: CircleAvatar(
                                            //         backgroundImage:
                                            //             AssetImage('assets/tag.png'),
                                            //         backgroundColor: Colors.white,
                                            //         radius: 12.0,
                                            //       ),
                                            //     ),
                                            //     radius: 48.0,
                                            //   ),
                                            // ),
                                            Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/images/profile1.png',
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 4),
                                            Image.asset(
                                                'assets/images/profile2.png')


                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      top: 70,
                                      left: 0,
                                      right: 0,
                                      child: SizedBox(
                                        height: 100,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 55,
                                            ),
                                            Image.asset(
                                                'assets/icons/img_24.png',
                                                height: 22,
                                                width: 24),
                                            SizedBox(
                                              width: 93,
                                            ),
                                            Image.asset(
                                                'assets/icons/img_25.png',
                                                width: 28,
                                                height: 28),
                                            SizedBox(
                                              width: 88,
                                            ),
                                            Image.asset(
                                                'assets/icons/img_26.png',
                                                height: 22,
                                                width: 24),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomLeagusRow(
                              image1: AssetImage(
                                'assets/icons/img_18.png',
                              ),
                              image2: AssetImage(
                                'assets/images/img_20.png',
                              ),
                              title1: Text(
                                'janchuxxx56 (17)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                ),
                              ),
                              image3: AssetImage('assets/icons/img_11.png'),
                              xp: Text('XP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'public',
                                      color: Color(0xffF6623A))),
                              count: Text('241',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                              star: Text('28',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                            ),
                            SizedBox(height: 10),
                            CustomLeagusRow(
                              image1: AssetImage(
                                'assets/icons/img_18.png',
                              ),
                              image2: AssetImage(
                                'assets/images/img_20.png',
                              ),
                              title1: Text(
                                'janchuxxx56 (17)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                ),
                              ),
                              image3: AssetImage('assets/icons/img_11.png'),
                              xp: Text('XP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'public',
                                      color: Color(0xffF6623A))),
                              count: Text('241',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                              star: Text('28',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                            ),
                            SizedBox(height: 10),
                            CustomLeagusRow(
                              image1: AssetImage(
                                'assets/icons/img_18.png',
                              ),
                              image2: AssetImage(
                                'assets/images/img_20.png',
                              ),
                              title1: Text(
                                'janchuxxx56 (17)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                ),
                              ),
                              image3: AssetImage('assets/icons/img_11.png'),
                              xp: Text('XP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'public',
                                      color: Color(0xffF6623A))),
                              count: Text('241',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                              star: Text('28',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                            ),
                            SizedBox(height: 10),
                            CustomLeagusRow(
                              image1: AssetImage(
                                'assets/icons/img_18.png',
                              ),
                              image2: AssetImage(
                                'assets/images/img_20.png',
                              ),
                              title1: Text(
                                'janchuxxx56 (17)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                ),
                              ),
                              image3: AssetImage('assets/icons/img_11.png'),
                              xp: Text('XP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'public',
                                      color: Color(0xffF6623A))),
                              count: Text('241',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                              star: Text('28',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                            ),
                            SizedBox(height: 10),
                            CustomLeagusRow(
                              image1: AssetImage(
                                'assets/icons/img_18.png',
                              ),
                              image2: AssetImage(
                                'assets/images/img_20.png',
                              ),
                              title1: Text(
                                'janchuxxx56 (17)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                ),
                              ),
                              image3: AssetImage('assets/icons/img_11.png'),
                              xp: Text('XP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'public',
                                      color: Color(0xffF6623A))),
                              count: Text('241',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                              star: Text('28',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  )),
                            ),
                          ]))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
