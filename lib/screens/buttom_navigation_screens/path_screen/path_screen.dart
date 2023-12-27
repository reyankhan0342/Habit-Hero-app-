// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:habit_hero_2_app/menu_buttom_sheets/CalenderBottpmSheet.dart';
import 'package:habit_hero_2_app/menu_buttom_sheets/profiles/profile_button_sheet.dart';
import 'package:habit_hero_2_app/menu_buttom_sheets/premium_bottom_sheet.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';

import 'package:provider/provider.dart';
import 'package:share/share.dart';

import '../../../../menu_buttom_sheets/path_screen_catages_image_buttom_sheet.dart';
import 'custom_painters/circle_line2_painter.dart';
import 'start_screen.dart';
import 'custom_painters/circle_line_painter.dart';
import 'custom_painters/custom_paint2.dart';
import 'custom_painters/custom_paint3.dart';

class PathScreen extends StatelessWidget {
  PathScreen({super.key});
  final AssetImage img11 = AssetImage('assets/images/img_11.png');
  var Url = 'invitelink.habithero.com/julia15';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF6EE),
      body: ChangeNotifierProvider(
        create: (context) => MyLeagusButtonSheetProvider(),
        child: Consumer<MyLeagusButtonSheetProvider>(
          builder: (context, provider, child) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.2,
                      ),
                      SizedBox(height: size.height * 0.03),
                      CustomPaint(
                        painter: RightPainter(
                          AssetImage(
                            'assets/images/img_14.png',
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width * 0.04),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Morning workout',
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'public'),
                                ),
                              ),
                              SizedBox(width: 35),
                              Image.asset(
                                'assets/images/yogapnng.png',
                                height: size.height * 0.1,
                                width: size.width * 0.2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: size.height * 0.08, left: size.width * 0.2),
                        child: CustomPaint(
                          painter: LeftPainter(AssetImage(
                            'assets/images/img_11.png',
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/img_15.png',
                                height: size.height * 0.09,
                                width: size.width * 0.2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Warm up',
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'public'),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          PathScreenCatagesButtomSheet()
                                              .openGradientBottomSheet(context);
                                        },
                                        child: Image.asset(
                                          'assets/icons/img_12.png',
                                          width: 86,
                                          height: 56,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StartScreen()));
                                        },
                                        child: Image.asset(
                                          'assets/icons/img_13.png',
                                          width: 96,
                                          height: 58,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 62),
                        child: CustomPaint(
                          painter: RightPainter2(
                            AssetImage(
                              '',
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width * 0.2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Meditation',
                                      style: TextStyle(
                                          fontSize: size.width * 0.04,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'public'),
                                    ),
                                    Text(
                                      '10 minutes',
                                      style: TextStyle(
                                          fontSize: size.width * 0.03,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'public'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        PathScreenCatagesButtomSheet()
                                            .openGradientBottomSheetMeditation(
                                                context);
                                      },
                                      child: Image.asset(
                                        'assets/icons/img_14.png',
                                        width: size.width * 0.2,
                                        height: 46,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 35),
                                Image.asset(
                                  'assets/images/img_12.png',
                                  height: 86,
                                  width: size.width * 0.2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 63, left: size.width * 0.2),
                        child: CustomPaint(
                          painter: LeftPainter2(
                              AssetImage('assets/images/img_11.png'),
                              AssetImage(
                                'assets/images/img_14.png',
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/img_13.png',
                                height: 86,
                                width: size.width * 0.2,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Stretching',
                                    style: TextStyle(
                                        fontSize: size.width * 0.04,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'public'),
                                  ),
                                  Text(
                                    '10 minutes',
                                    style: TextStyle(
                                        fontSize: size.width * 0.03,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'public'),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/icons/img_14.png',
                                      width: size.width * 0.2,
                                      height: 46,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 64),
                        child: CustomPaint(
                          painter: RightPainter2(
                            AssetImage('assets/icons/icons_14.png'),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width * 0.2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'student',
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'public'),
                                ),
                                SizedBox(width: 35),
                                Image.asset(
                                  'assets/images/yogapnng.png',
                                  height: 86,
                                  width: size.width * 0.2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 62, left: size.width * 0.2),
                        child: CustomPaint(
                          painter: LeftPainter(
                              AssetImage('assets/images/img_11.png')),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/yogapnng.png',
                                height: 86,
                                width: 86,
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 40),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      'Зарядка',
                                      style: TextStyle(
                                          fontSize: size.width * 0.04,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'public'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.06, top: size.height * 0.04),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                String url = Url.toString();
                                Share.share(url,
                                    subject: 'Check out this link');
                              },
                              child: Image.asset(
                                'assets/icons/Share.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.2,
                            ),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Stack(
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(80),
                                          border: Border.all(
                                              color: Colors.red, width: 1),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(2),
                                          child: CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                Colors.grey.withOpacity(0.5),
                                            backgroundImage: AssetImage(
                                                'assets/images/profile.png'),
                                          ),
                                        ))),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50.0, top: 6, bottom: 6),
                                  child: GestureDetector(
                                    onTap: () {
                                      ProfileSheet()
                                          .openGradientBottomSheet(context);
                                    },
                                    child: Card(
                                      elevation: 4,
                                      color: Colors.white.withOpacity(0.9),
                                      child: Container(
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '12Lvl.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10,
                                              fontFamily: 'public',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.1,
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {
                                PremiumBottomSheet()
                                    .PaymentDoneBottomSheet(context);
                              },
                              child: Image.asset(
                                'assets/icons/vip.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75.0, top: 8),
                        child: Row(
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                'assets/icons/icon-3.png',
                                width: 28,
                                height: 28,
                              ),
                              onTap: () {
                                Calenderbottomsheet()
                                    .OpenCalenderbottemSheet(context);
                              },
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Image.asset(
                              'assets/icons/img_10.png',
                              width: 28,
                              height: 28,
                            ),
                            Text(
                              '12,444 ',
                              style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  color: Colors.blueGrey),
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.invitecontanor();
                              },
                              child: Text(
                                '/ 8,000',
                                style: TextStyle(
                                    fontSize: size.width * 0.03,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            GestureDetector(
                                onTap: () {
                                  provider.dimentcontanor();
                                  provider.notifyListeners();
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Image.asset(
                                    'assets/icons/img_11.png',
                                    width: size.width * 0.06,
                                    height: size.height * 0.04,
                                  ),
                                )),
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: size.width * 0.04,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                provider.dimentContanor == false
                    ? Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 154),
                          width: size.width * 0.5,
                          height: size.width * 0.09,
                          decoration: BoxDecoration(
                              color: Color(0xff3C2E3C),
                              borderRadius: BorderRadius.circular(80)),
                          child: GestureDetector(
                            onTap: () {
                              PathScreenCatagesButtomSheet()
                                  .openGradientBottomSheetMeditation(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'My Exercises',
                                  style: TextStyle(
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'public',
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Image.asset('assets/icons/img_59.png',
                                    width: size.width * 0.05,
                                    height: size.height * 0.06),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 154),
                          width: size.width * 0.8,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff3C2E3C),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'For various actions you will earn\n Diamonds, this is an internal '
                              'currency that you can spend '
                              'on buying \n different things in the application.',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.width * 0.04,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                provider.inviteContanor == true
                    ? Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 154),
                          width: size.width * 0.8,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff3C2E3C),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Reach 10k Steps and get: ',
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'public'),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'XP',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: size.width * 0.04,
                                            fontFamily: 'public',
                                            color: Color(0xffF6623A),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            fontFamily: 'public',
                                            fontSize: size.width * 0.04,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'For each extra 1k Steps get:',
                                          style: TextStyle(
                                              fontSize: size.width * 0.04,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'public'),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'XP',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: size.width * 0.04,
                                            fontFamily: 'public',
                                            color: Color(0xffF6623A),
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontFamily: 'public',
                                            fontSize: size.width * 0.04,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      )
                    : SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
