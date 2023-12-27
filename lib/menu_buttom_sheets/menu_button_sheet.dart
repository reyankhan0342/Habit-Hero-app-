// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/menu_buttom_sheets/CalenderBottpmSheet.dart';

import 'package:habit_hero_2_app/menu_buttom_sheets/massages_buttom_sheet.dart';
import 'package:habit_hero_2_app/screens/dashboard/splash_screen.dart';

import 'ambassadar_profile_buttom_sheet.dart';
import 'join_our_ community.dart';
import 'profiles/profile_button_sheet.dart';
import 'custom_menu_row.dart';
import 'premium_bottom_sheet.dart';


class MenuButtonSheet {
  openGradientBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(55.0)),
      ),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 1.2,
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
                    width: size.width*0.2,
                    height: 3.3,
                    decoration: BoxDecoration(
                      color: Color(0xffEDD6C1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width*0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: size.width * 0.2),
                        SizedBox(width:size.width *0.04,),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            ' Menu',
                            style: TextStyle(
                                fontFamily: 'public',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
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
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_29.png'),
                            onTap: () {
                              Navigator.pop(context);
                              ProfileSheet().openGradientBottomSheet(context);
                            },
                            title1: Text('MY PROFILE')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_30.png'),
                            onTap: () {
                            PremiumBottomSheet().PaymentDoneBottomSheet(context);
                            },
                            title1: Text('PREMIUM ACCOUNT')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_31.png'),
                            onTap: () {
                              Calenderbottomsheet().OpenCalenderbottemSheet(context);
                            },
                            title1: Text('MY DAYS IN ROW')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_32.png'),
                            onTap: () {
                              AmbassadarProfileButtomSheet().openGradientBottomSheet(context);
                            },
                            title1: Text('AMBASSADOR PROFILE')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_33.png'),
                            onTap: () {
                              JoinOurCommunityButtomSheet().openGradientBottomSheet(context);
                            },
                            title1: Text('JOIN OUR COMMUNITY')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_34.png'),
                            onTap: () {
                              MassagesButtomSheet().openGradientBottomSheet(context);
                            },
                            title1: Text('MESSAGE US')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_25.png'),
                            onTap: () {
                        Calenderbottomsheet().openGradientBottomSheet(context);
                            },
                            title1: Text('CHANGE LANGUAGE')),
                        SizedBox(
                          height: 10,
                        ),
                        CustomMenuRow(
                            image1: AssetImage('assets/icons/img_36.png'),
                            onTap: () {},
                            title1: Text('SIGN OUT')),
                      ],
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
