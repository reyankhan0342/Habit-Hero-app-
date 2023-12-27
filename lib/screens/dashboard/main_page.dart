// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../menu_buttom_sheets/menu_button_sheet.dart';
import '../buttom_navigation_screens/leagus_screen.dart';
import '../buttom_navigation_screens/my_leagus_Screens/my_leagus.dart';
import '../buttom_navigation_screens/path_screen/path_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> Screen = [
    PathScreen(),
    LeagusScreen(),
    MyLeagusScreen(),
    Container(),
  ];

  int value = 0;
  getVlaue(int x) {
    value = x;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          value == 0
              ? PathScreen()
              : value == 1
                  ? LeagusScreen()
                  : value == 2
                      ? MyLeagusScreen()
                      : value == 3
                          ? Container()
                          : SizedBox(),
          SizedBox(
            height: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                    bottom: size.width * 0.03,
                    right: size.width * 0.05,
                    left: size.width * 0.05),
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(children: [
                  GestureDetector(
                      onTap: () {
                        getVlaue(0);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: size.width * 0.02),
                        width: size.width * 0.2,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 2,
                            ),
                            value == 0
                                ? Image.asset(
                                    'assets/icons/img_2.png',
                                    width: size.width * 0.06,
                                  )
                                : Image.asset(
                                    'assets/icons/img_6.png',
                                    width: size.width * 0.06,
                                  ),
                            Text(
                              'PATH',
                              style: TextStyle(
                                fontFamily: 'public',
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      getVlaue(1);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: size.width * 0.02),
                      width: size.width * 0.2,
                      height: size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          value == 1
                              ? Image.asset(
                                  'assets/icons/img_7.png',
                                  width: size.width * 0.06,
                                )
                              : Image.asset('assets/icons/img_3.png',
                                  width: size.width * 0.06),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'LEAGUE',
                            style: TextStyle(
                              fontFamily: 'public',
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        getVlaue(2);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: size.width * 0.02),
                        width: size.width * 0.2,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            value == 2
                                ? Image.asset(
                                    'assets/icons/img_8.png',
                                    width: size.width * 0.06,
                                  )
                                : Image.asset('assets/icons/img_4.png',
                                    width: size.width * 0.06),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'MY LEAGUE',
                              style: TextStyle(
                                fontFamily: 'public',
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      currentIndex != 3
                          ? MenuButtonSheet().openGradientBottomSheet(context)
                          : null;
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: size.width * 0.02),
                      width: size.width * 0.2,
                      height: size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/img_5.png',
                            color: value == 3 ? Colors.red : Colors.grey,
                            width: size.width * 0.06,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'MENU',
                            style: TextStyle(
                              fontFamily: 'public',
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
