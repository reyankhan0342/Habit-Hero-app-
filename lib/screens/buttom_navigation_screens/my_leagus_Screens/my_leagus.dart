// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:provider/provider.dart';


import '../../../../custom_widgets/custom_round_button.dart';
import '../../../../custom_widgets/custom_text_form_field.dart';
import 'activity_completed.dart';
import 'activity_leagues.dart';

class MyLeagusScreen extends StatefulWidget {
  MyLeagusScreen({super.key});

  @override
  State<MyLeagusScreen> createState() => _MyLeagusScreenState();
}

class _MyLeagusScreenState extends State<MyLeagusScreen> {
  TextEditingController leagusName = TextEditingController();
  FocusNode leagusNode = FocusNode();
  int currentIndex = 0;

  List<Widget> Screen = [
    ActivityLeagues(),
    ActivityCompleted(),
  ];

  bool showImage1 = true;
  bool showImage2 = false;
  bool deurationButton = true;
  bool expeniceButton = false;

  int value = 0;

  getVlaue(int x) {
    value = x;
    setState(() {});
  }

  openGradientBottomSheetNew(BuildContext context) {
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
            decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/images/bg2.png')),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 60,
                    height: 3.3,
                    decoration: BoxDecoration(
                      color: Color(0xffEDD6C1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, left: 150),
                        child: Image.asset(
                          'assets/icons/img_19.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 110),
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
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(),
                      child: ChangeNotifierProvider(
                          create: (context) => MyLeagusButtonSheetProvider(),
                          child: Consumer<MyLeagusButtonSheetProvider>(
                            builder: (context, provider, child) {
                              return Column(
                                children: [
                                  Text(
                                    'CREATE MY LEAGUE',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'public',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Set goals. Compete with friends or relatives.',
                                    style: TextStyle(
                                      height: 1.0,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'public',
                                    ),
                                    maxLines: 19,
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '1. LEAGUE NAME',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  CustomTextField(
                                    controller: leagusName,
                                    hintText: 'Create leagus name',
                                    focusNode: leagusNode,

                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '2. LEAGUE CATEGORIES',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    width: size.width * 0.9,
                                    height: size.height * 0.075,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color(0xffBDBDBD), width: 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: DropdownButton(
                                      underline: Text(''),
                                      hint: Text('Select from list'),
                                      value: provider
                                          .countryValue, // Set the value from the provider
                                      iconSize: 30,
                                      isExpanded: true,
                                      icon: Icon(Icons.keyboard_arrow_down,
                                          size: 30, color: Colors.black),
                                      onChanged: (newValue) {
                                        // provider.countryValue = newValue as String;
                                        provider
                                            .setLegusCategory(newValue as String);
                                      },
                                      items: provider.leagusCategres.map((value) {
                                        return DropdownMenuItem(
                                          value:
                                              value, // Use the current value from the loop
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '3. LEAGUE GOAL',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          provider.leguageDuration();
                                        },
                                        child: Container(
                                          width: size.width * 0.3,
                                          height: size.height * 0.055,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                if (provider.duration!)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Image.asset(
                                                      'assets/icons/img_20.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                  ),
                                                SizedBox(
                                                  width: 13,
                                                ),
                                                Text(
                                                  'Duration',
                                                  style: TextStyle(
                                                    fontFamily: 'public',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 32,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          provider.leguagExperince();
                                        },
                                        child: Container(
                                          width: size.width * 0.3,
                                          height: size.height * 0.055,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                if (provider.experince!)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Image.asset(
                                                      'assets/icons/img_20.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                  ),
                                                SizedBox(
                                                  width: 13,
                                                ),
                                                Text(
                                                  'EXPERIENCE',
                                                  style: TextStyle(
                                                    fontFamily: 'public',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    width: size.width * 0.9,
                                    height: size.height * 0.075,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color(0xffBDBDBD), width: 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: DropdownButton(
                                      underline: Text(''),
                                      hint: Text('Select from duration'),
                                      value: provider.duration == true
                                          ? provider.durationvalue
                                          : provider
                                              .experinceValue, // Use correct value based on button
                                      iconSize: 30,
                                      isExpanded: true,
                                      icon: Icon(Icons.keyboard_arrow_down,
                                          size: 30, color: Colors.black),
                                      onChanged: (newValue) {
                                        if (provider.duration == true) {
                                          provider.setdurationCategory(
                                              newValue as String);
                                        } else {
                                          provider.setexperienceCategory(
                                              newValue as String);
                                        }
                                      },
                                      items: provider.duration == true
                                          ? provider.durationList.map((value) {
                                              return DropdownMenuItem(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList()
                                          : provider.experinceList.map((value) {
                                              return DropdownMenuItem(
                                                value:
                                                    value, // Don't forget to provide the value
                                                child: Text(value),
                                              );
                                            }).toList(),
                                    ),
                                  ),
                                  SizedBox(height: 32,),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '4. MEMBERS',
                                          style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        GestureDetector(
                                          onTap: ()
                                          {
                                            Navigator.pop(context);

                                       openGradientBottomSheetInvite(context);
                                          },
                                          child: Text('+INVITE',style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            color: Color(0xffF6623A)
                                          ),),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  provider.experince
                                      ? CustomRoundButon(
                                          borderRadius: BorderRadius.circular(80),
                                          border: Border.all(
                                              color: Color(0xffF6623A), width: 2),
                                          title: 'CREATE MY LEAGUE',
                                          textStyle: TextStyle(
                                            fontFamily: 'medium',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            wordSpacing: 0.3,
                                          ),
                                          color: Color(0xffF6623A),
                                          onTap: () {},
                                          width: size.width * 0.5,
                                          height: size.height * 0.05)
                                      : Container(
                                          width: size.width * 0.5,
                                          height: size.height * 0.05,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: Color(0xffDEDEDE),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'CREATE MY LEAGUE',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  fontFamily: 'public',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                ],
                              );
                            },
                          ))),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  openGradientBottomSheetInvite(BuildContext context) {
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
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg2.png')),
            ),
            child: SingleChildScrollView(
                child: ChangeNotifierProvider(
                  create: (context) => MyLeagusButtonSheetProvider(),
                  child: Consumer<MyLeagusButtonSheetProvider>(
                    builder: (context, provider, child) {
                      return Column(
                        children: [
                          SizedBox(height: 50),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 60,
                            height: 3.3,
                            decoration: BoxDecoration(
                              color: Color(0xffEDD6C1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 18.0, left: 150),
                                child: Image.asset(
                                  'assets/icons/img_19.png',
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 110),
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
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [
                                Text(
                                  'INVITE',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'public',
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'SEARCH',
                                    style: TextStyle(
                                        fontFamily: 'public',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                CustomTextField(
                                  controller: leagusName,
                                  hintText: 'Enter username',
                                  focusNode: leagusNode,
                                  onChanged: (value) {
                                    provider.filterInvitees(
                                        value); // Call the filtering method on change
                                  },

                                ),
                              ],
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: provider.filteredInvitees.length,
                            itemBuilder: (context, index) {
                              final invitee = provider.filteredInvitees[index];
                              return Container(
                                margin: EdgeInsets.only(top: 20),
                                child: ListTile(
                                  leading: index == 0
                                      ? Image.asset('assets/images/img_15.png')
                                      : index == 1
                                      ? Image.asset('assets/images/img_12.png')
                                      : index == 2
                                      ? Image.asset(
                                      'assets/images/img_19.png')
                                      : index == 3
                                      ? Image.asset(
                                      'assets/images/img_20.png')
                                      : index == 4
                                      ? Image.asset(
                                      'assets/images/img_20.png')
                                      : SizedBox(),
                                  trailing: CustomRoundButon(
                                    title: 'Invite',
                                    textStyle: TextStyle(
                                      fontFamily: 'medium',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      wordSpacing: 0.5,
                                    ),
                                    width: size.width * 0.30,
                                    height: size.height * 0.050,
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(
                                        color: Color(0xffFFD8B7), width: 3),
                                    color: Color(0xffF6623A),
                                    onTap: () {},
                                  ),
                                  title: Text(invitee),
                                  // Add any other UI elements you want for each invitee
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 50),
                        ],
                      );
                    },
                  ),
                )),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          value == 0
              ? ActivityLeagues()
              : value == 1
                  ? ActivityCompleted()
                  : SizedBox(),
          Container(
            height: size.height * 0.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD7A091).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, top: size.height * 0.030),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/img_19.png',
                        width:size.width*0.06,
                      ),
                      SizedBox(
                        width: size.width*0.01,
                      ),
                     Padding(padding: EdgeInsets.only(top: 4),
                     child:  Text(
                       'MY LEAGUE',
                       style: TextStyle(
                         fontSize: size.width*0.04,
                         fontWeight: FontWeight.w700,
                         fontFamily: 'public',
                       ),
                     ),)
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                  ),

                  GestureDetector(
                    onTap: () {
                      openGradientBottomSheetNew(context);
                    },
                    child: Text(
                      '+NEW',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize:size.width*0.04,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.width*0.01,
          ),
          Container(
            margin: EdgeInsets.only(top: 120,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showImage1 = true;
                      showImage2 = false;
                      getVlaue(0);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    width: size.width*0.3,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (showImage1)
                          Image.asset(
                            'assets/icons/img_20.png',
                            width: size.width*0.04,

                          ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'ACTIVE',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: size.width*0.01,),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(),
                    alignment: Alignment.center,
                    width: size.width*0.3,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'AMBASSADORS',style: TextStyle(
                        fontFamily: 'public',
                        fontWeight: FontWeight.w700,
                        fontSize: size.width*0.03,
                        color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(width: size.width*0.01,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showImage2 = true;
                      showImage1 = false;
                      getVlaue(1);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(),
                    alignment: Alignment.center,
                    width: size.width*0.3,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (showImage2)
                          Image.asset(
                            'assets/icons/img_20.png',
                            width: size.width*0.04,

                          ),
                        Text(
                          'COMPLETED',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03,
                              color: Colors.red),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(width:7.5,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
