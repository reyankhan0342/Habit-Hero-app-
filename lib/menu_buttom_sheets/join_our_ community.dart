// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinOurCommunityButtomSheet {
  TextEditingController userNameContriller = TextEditingController();
  FocusNode usrNameFocus = FocusNode();
  final formkey = GlobalKey<FormState>();

  bool slecteditem = false;

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
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg2.png')),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: SingleChildScrollView(
              child: ChangeNotifierProvider(
                create: (context) => MyLeagusButtonSheetProvider(),
                child: Consumer<MyLeagusButtonSheetProvider>(
                  builder: (context, provider, child) {
                    return Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 60,
                        height: 3.3,
                        decoration: BoxDecoration(
                          color: Color(0xffEDD6C1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
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
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: MediaQuery.of(context).size.height * 0.9,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/img_52.png',
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'JOIN OUR COMMUNITY',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'public',
                                  fontWeight: FontWeight.w700),
                            ),

                            SizedBox(height: 60),
                            Container(
                              height: 250,
                              width: 340,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 36),
                                    child: Container(
                                      height: 250,
                                      width: 340,
                                      decoration: BoxDecoration(
                                        // gradient: LinearGradient(
                                        //   colors: [
                                        //     Color(0xFFCCE5F0), // #CCE5F0 in ARGB format
                                        //     Color(0xFFCCE5F0),
                                        //     Color(0xFFCCE5F0), // #F6FCFF in ARGB format
                                        //   ],
                                        //   begin: Alignment.topCenter,
                                        //   end: Alignment.bottomCenter,
                                        // ),
                                        border: Border.all(
                                            color: Color(0xffCCE5F0)),
                                        color: Color(0xffCCE5F0)
                                            .withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(18),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 30),
                                          Text(
                                            'Join our Telegram Channel',
                                            style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff239FDB),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 20),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 30,
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/img_54.png',
                                                  height: 23,
                                                  width: 23,
                                                ),
                                                SizedBox(width: 7),
                                                Text(
                                                  '2 195 Active members',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30, right: 30),
                                            child:GestureDetector(
                                              onTap: () async {
                                                const telegramChannelUrl = 'https://t.me/your-telegram-channel-url';
                                                if (await canLaunch(telegramChannelUrl)) {
                                                  await launch(telegramChannelUrl);
                                                } else {
                                                  // Handle error, e.g., show an error message
                                                  print('Could not launch $telegramChannelUrl');
                                                }
                                              },
                                              child: Container(
                                                height: 46,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(18),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/img_53.png',
                                                      height: 23,
                                                      width: 23,
                                                    ),
                                                    SizedBox(width: 7),
                                                    Text(
                                                      'Open our Telegram Channel',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),

                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150,
                                    child: Image.asset(
                                      'assets/icons/img_53.png',
                                      height: 54,
                                      width: 54,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 25),
                            Container(
                              height: 250,
                              width: 340,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 36),
                                    child: Container(
                                      height: 250,
                                      width: 340,
                                      decoration: BoxDecoration(
                                        color: Color(0xffCCE5F0).withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(18),
                                        border: Border.all(color: Color(0xffD1DFF3)),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 30),
                                          Text(
                                            'Join Our Facebook Group',
                                            style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff239FDB),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 20),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/img_54.png',
                                                  height: 23,
                                                  width: 23,
                                                ),
                                                SizedBox(width: 7),
                                                Text(
                                                  '1 560 Active members',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30, right: 30),
                                            child: GestureDetector(
                                              onTap: () async {
                                                const facebookGroupUrl = 'https://www.facebook.com/your-facebook-group-url';
                                                if (await canLaunch(facebookGroupUrl)) {
                                                  await launch(facebookGroupUrl);
                                                } else {
                                                  // Handle error, e.g., show an error message
                                                  print('Could not launch $facebookGroupUrl');
                                                }
                                              },
                                              child: Container(
                                                height: 46,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(18),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/img_55.png',
                                                      height: 23,
                                                      width: 23,
                                                    ),
                                                    SizedBox(width: 7),
                                                    Text(
                                                      'Open our Facebook Group',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150,
                                    child: Image.asset(
                                      'assets/icons/img_55.png',
                                      height: 54,
                                      width: 54,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 50,),
                          ],
                        ),
                      ),
                    ]
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
