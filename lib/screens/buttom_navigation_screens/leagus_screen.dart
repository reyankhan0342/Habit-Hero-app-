// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../custom_widgets/custom_rows/custom_leagus_row.dart';

class LeagusScreen extends StatefulWidget {
  LeagusScreen({super.key});

  @override
  State<LeagusScreen> createState() => _LeagusScreenState();
}

class _LeagusScreenState extends State<LeagusScreen> {
  bool showImage1 = false;
  bool showImage2 = false;
  bool showImage3 = false;
  bool showImage4 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
color: Colors.green,
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage('assets/images/bg2.png')),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //App bar contaienr
              Container(
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xffD7A091).withOpacity(0.5), // Shadow color
                  //     spreadRadius: 2, // Spread radius
                  //     blurRadius: 5, // Blur radius
                  //     offset: Offset(0, 3), // Shadow offset
                  //   ),
                  // ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width*0.09,top: size
                      .height*0.03),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/img_7.png',
                            width: size.width*0.09,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(padding: EdgeInsets.only(top: 5),child:
                          Text(
                            'GENERAL LEAGUE',
                            style: TextStyle(
                              fontSize: size.width*0.04,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            ),
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      SizedBox(width: size.width*0.08,),

                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/img_15.png',
                            width: size.width*0.07,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'DAYS',
                            style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize:size.width*0.03,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                  padding:  EdgeInsets.only(left: size.width*0.05, top: 14),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showImage1 = !showImage1;
                              showImage4 = false;
                              showImage2 = false;
                              showImage3 = false;
                            });
                          },
                          // selectable container
                          child: Container(
                            height: size.width * 0.1,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:showImage1==true? Border.all(color: Colors.deepOrangeAccent):Border(),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (showImage1) // Show image only when showImage is true
                                  Image.asset(
                                    'assets/icons/img_17.png',
                                    width: size.width*0.03,
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ELITE',
                                  style: TextStyle(
                                    fontSize: size.width*0.03,
                                    color: Color(0xff30B29B),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/icons/img_16.png',
                                  width: size.width*0.05,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showImage2 = !showImage2;
                              showImage1 = false;
                              showImage4 = false;
                              showImage3 = false;
                            });
                          },
                          child: Container(
                            height: size.width * 0.1,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:showImage2==true? Border.all(color: Colors.deepOrangeAccent):Border(),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (showImage2) // Show image only when showImage is true
                                  Image.asset(
                                    'assets/icons/img_17.png',
                                    width: size.width*0.03,

                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ELITE',
                                  style: TextStyle(
                                    fontSize: size.width*0.03,
                                    color: Color(0xff30B29B),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/icons/img_16.png',
                                  width: size.width*0.04,

                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showImage3 = !showImage3;
                              showImage1 = false;
                              showImage2 = false;
                              showImage4 = false;
                            });
                          },
                          child: Container(
                            height: size.width * 0.1,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:showImage3==true? Border.all(color: Colors.deepOrangeAccent):Border(),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (showImage3) // Show image only when showImage is true
                                  Image.asset(
                                    'assets/icons/img_17.png',
                                    width: size.width*0.03,

                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ELITE',
                                  style: TextStyle(
                                    fontSize: size.width*0.03,
                                    color: Color(0xff30B29B),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/icons/img_16.png',
                                  width: size.width*0.04,

                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showImage4 = !showImage4;
                              showImage1 = false;
                              showImage2 = false;
                              showImage3 = false;
                            });
                          },
                          child: Container(
                            height: size.width * 0.1,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:showImage4==true? Border.all(color: Colors.deepOrangeAccent):Border(),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (showImage4) // Show image only when showImage is true
                                  Image.asset(
                                    'assets/icons/img_17.png',
                                    width:size.width*0.03,
                                  ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ELITE',
                                  style: TextStyle(
                                    fontSize: size.width*0.03,
                                    color: Color(0xff30B29B),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/icons/img_16.png',
                                  width: size.width*0.04,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  )
              ),

              Container(

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 41,
                      ),
                      Image.asset(
                        'assets/images/img_18.png',
                        width: 32,
                        height: 32,
                      ),


                      SizedBox(height: 18,),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: size.height*0.2,
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 48),
                                height: 66,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(16.0),
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
                                      Image.asset('assets/images/profile2.png'),
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
                                      Image.asset('assets/images/profile2.png')

                                      // CircleAvatar(
                                      //   radius: 30,
                                      //   backgroundColor: Color(
                                      //       0xffFF9A48A), // Outline border color

                                      //   child: CircleAvatar(
                                      //     backgroundImage:
                                      //         AssetImage('assets/p3.png'),
                                      //     child: Align(
                                      //         alignment: Alignment.topRight,
                                      //         child: Image.asset("assets/@.png")
                                      //         // SvgPicture.asset("assets/circle.svg")
                                      //         // CircleAvatar(
                                      //         //   backgroundColor: Colors.white,
                                      //         //   radius: 12.0,
                                      //         // ),
                                      //         ),
                                      //radius: 28.0,
                                      //),
                                      //),
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
                                      Image.asset('assets/icons/img_24.png',
                                          height: 22, width: 24),
                                      SizedBox(
                                        width: 93,
                                      ),
                                      Image.asset('assets/icons/img_25.png',
                                          width: 28, height: 28),
                                      SizedBox(
                                        width: 88,
                                      ),
                                      Image.asset('assets/icons/img_26.png',
                                          height: 22, width: 24),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 12,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 10,
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 40,
                          ),

                          Expanded(
                            child: Divider(
                              color: Colors.red,
                              indent: 15,
                              endIndent: 10,
                              thickness: 2,
                            ),
                          ),
                          Image.asset('assets/images/img_21.png',
                              width: size.width * 0.4),
                          Expanded(
                            child: Divider(
                              color: Colors.red,
                              indent: 15,
                              endIndent: 10,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4,),

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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(height: 10,),
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
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public',
                          ),
                        ),
                        image3: AssetImage('assets/icons/img_11.png'),
                        xp: Text('XP',
                            style: TextStyle(
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'public',
                                color: Color(0xffF6623A))),
                        count: Text('241',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                        star: Text('28',
                            style: TextStyle(
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'public',
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
