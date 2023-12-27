// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:provider/provider.dart';

class AmbassadarProfileButtomSheet {
  List images = [
    'assets/images/exercises_images/img_1.png',
    'assets/images/exercises_images/img_2.png',
    'assets/images/exercises_images/img_3.png',
    'assets/images/exercises_images/img_1.png',
    'assets/images/exercises_images/img_4.png',
    'assets/images/exercises_images/img_5.png',
  ];

  List names = [
    'Ivanov A.',
    'Ostapenko A.',
    'Titov M.',
    'Ivanov A.',
    'Ostapenko A.',
    'Titov M.',
  ];
  List emails = [
    'vanya44',
    'ostapenko.a',
    'Ttitoff',
    'Ivanov A.',
    'Ostapenko A.',
    'Titov M.',
  ];

  List instagram = [
    'assets/icons/img_48.png',
    'assets/icons/img_48.png',
    'assets/icons/img_48.png',
    'assets/icons/img_48.png',
    'assets/icons/img_48.png',
    'assets/icons/img_48.png',
  ];

  List facebook = [
    'assets/icons/img_49.png',
    'assets/icons/img_49.png',
    'assets/icons/img_49.png',
    'assets/icons/img_49.png',
    'assets/icons/img_49.png',
    'assets/icons/img_49.png',
  ];

  TextEditingController userNameContriller = TextEditingController();
  FocusNode usrNameFocus = FocusNode();
  final formkey = GlobalKey<FormState>();

  var Url = 'invitelink.habithero.com/julia15';
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
            child: ChangeNotifierProvider(
              create: (context) => MyLeagusButtonSheetProvider(),
              child: Consumer<MyLeagusButtonSheetProvider>(
            builder: (context, provider, child) {
              return SingleChildScrollView(
                child: Column(
                  children: [
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
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.9,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/icons/img_47.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'AMBASSADOR PROFILE',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'public',
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: ExpansionTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.white,
                              collapsedTextColor: Colors.black,
                              maintainState: false,
                              initiallyExpanded: false,
                              title: Text(
                                'How it works?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'public',
                                  fontSize: 16,
                                  color: Colors.red,
                                ),
                              ),
                              //  trailing: Icon(Icons.keyboard_arrow_down_sharp,size: 30,color: Colors.black,),

                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    'PBecome a project ambassador and start earning.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    'Project partners receive 50% of the subscription of paid users they invited.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'public',
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    'To become an ambassador/partner of the project, you need to attract 100+ '
                                    'active users who will purchase an application subscription.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                  ),
                                  child: Text(
                                    'Get 20% of the income of the ambassadors you attracted to the project',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Align(
                            child: Text(
                              'AMBASSADORS OF THE OUR PROJECT',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'public',
                                fontSize: 14,
                              ),
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 200,
                            child: Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: images.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24.0),
                                          child: CircleAvatar(
                                            radius: 45,
                                            backgroundImage:
                                                AssetImage(images[index]),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          names[index],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'public',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          emails[index],
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.red,
                                            fontFamily: 'public',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              instagram[index],
                                              width: 14,
                                              height: 14,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            Image.asset(
                                              facebook[index],
                                              width: 8,
                                              height: 14,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'MY REFERAL LINK',
                              style: TextStyle(
                                fontFamily: 'public',
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: size.width * 0.6,
                                      child: Text(
                                        Url.toString(),
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'public',
                                          color: Colors.red,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFF9F7),
                                        borderRadius:
                                            BorderRadius.circular(40),
                                        border: Border.all(
                                            color: Colors.red, width: 1),
                                      ),
                                      padding: EdgeInsets.all(10),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 16),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 17),
                                      child: GestureDetector(
                                        onTap: () {
                                          String url = Url.toString();
                                          Share.share(url,
                                              subject: 'Check out this link');
                                          print(url.toString() +
                                              " ++++++=======>>>>>> ");
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Color(0xffEDD6C1),
                                          ),
                                          child: Image.asset(
                                            'assets/icons/Share.png',
                                            width: 15,
                                            height: 15,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Divider(
                                  endIndent: 0,
                                  indent: 20,
                                  color: Color(0xffF2EFEC),
                                  thickness: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '41',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff39E272)),
                                        ),
                                        Text(
                                          'People registered \n using my link',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    VerticalDivider(
                                      width: 2,
                                      color: Colors.red,
                                      indent: 0,
                                      endIndent: 10,
                                      thickness: 2,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '17/100',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff39E272)),
                                        ),
                                        Text(
                                          'Active members \n with subscription',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'MY INVITES',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xff3C2E3C),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage(images[index]),
                                        radius: 40,
                                      ),
                                    ),
                                    title: Text(emails[index]),
                                    trailing: Image.asset(
                                      'assets/icons/img_51.png',
                                      width: 100,
                                      height: 50,
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              );
            },
              ),
            ),
          ),
        );
      },
    );
  }
}
