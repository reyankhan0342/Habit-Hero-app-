// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';

import 'package:provider/provider.dart';

import '../../custom_widgets/custom_round_button.dart';
import '../../providers/my_leagus_button_sheet_provider.dart';
import '../authentication_Screen/register_screen1.dart';
import '../authentication_Screen/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Size size;
  bool isLanguageSelected1 = false;
  bool selectedLanguage = false;

  String language = 'CHANGE';
  var flage = 'assets/images/img_7.png';
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_img.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            child: SingleChildScrollView(
                child: ChangeNotifierProvider(
              create: (context) => MyLeagusButtonSheetProvider(),
              child: Consumer<MyLeagusButtonSheetProvider>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: size.height * 0.07, right: size.width * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              child: Image.asset(flage),
                            ),
                            GestureDetector(
                              onTap: () {
                                openGradientBottomSheet(context);
                              },
                              child: Text(
                                '${language}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.width * 0.03,
                                  color: Color(0xffF6623A),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/img.png',
                            width: size.width * 0.6,
                            height: size.width * 0.44,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: size.height * 0.08,
                          ),
                          Text(
                            'Welcome!',
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'medium'),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05),
                            child: Text(
                              'Set goals. Compete with friends, family and other users.',
                              style: TextStyle(
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'medium'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.060,
                          ),
                          CustomRoundButon(
                            title: 'SIGN IN',
                            textStyle: TextStyle(
                              fontFamily: 'medium',
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: size.width * 0.04,
                              wordSpacing: 0.5,
                            ),
                            width: size.width * 0.45,
                            height: size.height * 0.07,
                            borderRadius: BorderRadius.circular(80),
                            border:
                                Border.all(color: Color(0xffFFD8B7), width: 4),
                            color: Color(0xffF6623A),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()));
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.040,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen1()));
                            },
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                  color: Color(0xffF6623A)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.width * 0.020,
                      ),
                      Text(
                        'Sign in with:',
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/f.png',
                            width:size.width*0.06,
                            height: size.height*0.06,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: size.width * 0.090,
                          ),
                          Image.asset(
                            'assets/images/g.png',
                            width: size.width*0.06,
                            height: size.height*0.06,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),

                      // Selected language display
                    ],
                  );
                },
              ),
            )),
          ),
        ],
      ),
    );
  }

  void openGradientBottomSheet(BuildContext context) {

    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(55.0)),
      ),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
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
            child: ChangeNotifierProvider(
              create: (context) => MyLeagusButtonSheetProvider(),
              child: Consumer<MyLeagusButtonSheetProvider>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: size.width*0.2,
                        height: 4.4,
                        decoration: BoxDecoration(
                          color: Color(0xffEDD6C1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                           SizedBox(width:size.width*0.2,),
                          Align(
                            child: Text(
                              ' CHOOSE LANGUAGE',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontSize:size.width*0.04,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                margin: EdgeInsets.only(left:size.width*0.2),
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
                          )
                        ],
                      ),
                      Container(
                        width: size.width * 0.9,
                        height: size.height * 0.4,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height*0.06,
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(horizontal: size.width*0.07),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/img_25.png',
                                    width: size.width*0.09,
                                    height: size.height*0.09,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'English',
                                    style: TextStyle(
                                        fontFamily: 'piblic',
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width*0.04,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        language = 'English';
                                        flage = 'assets/images/img_25.png';
                                        provider.langugeSeleted1();
                                      });
                                    },

                                    child: Row(
                                      children: [
                                        provider.seletedLanguage1 == true
                                            ? Image.asset(
                                                'assets/images/img_26.png',
                                          width: 100,
                                          height: 50,
                                              )
                                            : SizedBox(
                                                child: Center(
                                                  child: Text(
                                                    'Choose',
                                                    style: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: size.width*0.04,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                ),
                                                width: 100,
                                                height: 50,
                                              ),
                                      ],
                                    ),
                                 )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(horizontal: size.width*0.07),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/img_6.png',
                                    width: size.width*0.09,
                                    height: size.height*0.09,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Latvian',
                                    style: TextStyle(
                                        fontFamily: 'piblic',
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width*0.04,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        setState(() {
                                          language = 'Latvian';
                                          flage = 'assets/images/img_6.png';
                                          provider.langugeSeleted2();
                                        });
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        provider.seletedLanguage2 == true
                                            ? Image.asset(
                                                'assets/images/img_26.png',
                                                width: 100,
                                                height: 50,
                                              )
                                            : SizedBox(
                                                child: Center(
                                                  child: Text(
                                                    'Choose',
                                                    style: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: size.width*0.04,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                ),
                                                width: 100,
                                                height: 50,
                                              ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(horizontal: size.width*0.07),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/img_7.png',
                                    width: size.width*0.09,
                                    height: size.height*0.09,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Russian',
                                    style: TextStyle(
                                        fontFamily: 'piblic',
                                        fontWeight: FontWeight.w500,
                                        fontSize:size.width*0.04,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        language = 'Russian';
                                        flage = 'assets/images/img_7.png';
                                        provider.langugeSeleted3();
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        provider.seletedLanguage3 == true
                                            ? Image.asset(
                                                'assets/images/img_26.png',
                                                width: 100,
                                                height: 50,
                                              )
                                            : SizedBox(
                                                child: Center(
                                                  child: Text(
                                                    'Choose',
                                                    style: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize:size.width*0.04,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                ),
                                                width: 100,
                                                height: 50,
                                              ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ));
      },
    );
  }
}
