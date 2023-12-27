// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/menu_buttom_sheets/profiles/profile_edit_sheet.dart';

class ProfileSheet {
  List<dynamic> images = [
    'assets/images/img_28.png',
    'assets/images/img_29.png',
    'assets/images/img_30.png',
    'assets/images/img_31.png',
    'assets/images/img_32.png',
    'assets/images/img_32.png',
  ];

  openGradientBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(55.0)),
      ),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Color(0xffFFF6EE),
                  Color(0xffFFF6EE),
                  Color(0xffFFF6EE),
                ],
                stops: [0.0, 0.84, 1.0],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: size.width * 0.2,
                    height: 3.3,
                    decoration: BoxDecoration(
                      color: Color(0xffEDD6C1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.04,
                          ),
                          child: Text(
                            ' MY PROFILE',
                            style: TextStyle(
                                fontFamily: 'public',
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 90, top: 10),
                            width: size.width * 0.09,
                            height: size.width * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xffEDD6C1),
                            ),
                            child: Image.asset(
                              'assets/icons/cross.png',
                              width: size.width * 0.03,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/profile1.png',
                          width: size.width * 0.2,
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Julia Lebedeva',
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: size.width * 0.3,
                                ),
                                SizedBox(width: size.width * 0.03),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    ProfileEditSheet()
                                        .openGradientBottomSheet(context);
                                  },
                                  child: Image.asset(
                                    'assets/icons/img_37.png',
                                    width: size.width * 0.05,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'julia15',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                  fontSize: size.width * 0.03),
                            ),
                            Text(
                              '12 Level',
                              style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  fontFamily: 'public',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/img_38.png',
                                    width: size.width * 0.03,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(
                                    'assets/icons/img_39.png',
                                    width: size.width * 0.02,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.09,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.03),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'GENERAL INFO',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                            fontSize: size.width * 0.04),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.04,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/icons/img_31.png',
                              width: 17,
                              height: 17,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'CDays in row:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  ' 12 DAYS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/icons/img_40.png',
                              width: 17,
                              height: 17,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Experience:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  ' 10 500 POINTS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/icons/img_10.png',
                              width: 17,
                              height: 17,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Steps today:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  ' 6,320 / 8,000 STEPS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/icons/img_11.png',
                              width: 17,
                              height: 17,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Crystals:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  ' 8 units',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'GENERAL LEAGUE:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                            fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/icons/img_7.png',
                          width: size.width*0.06,
                          height: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'League:',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'ELITE 2',
                          style: TextStyle(
                              fontFamily: 'public',
                              color: Color(0xff30B29B),
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 1,
                          height: 25,
                          color: Color(0xffEFEFEF),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Place:',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '4',
                          style: TextStyle(
                              fontFamily: 'public',
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'REWARDS:',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                            fontSize: size.width*0.04),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: size.height*0.2, // Adjust the height as needed
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns in the grid
                        mainAxisSpacing: 0.0,
                        crossAxisSpacing: 0.0, // Horizontal spacing between grid items
                      ),
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          images[index],
                          width: 100,
                          height: 100,
                        );
                      },
                    ),
                  ),


                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
