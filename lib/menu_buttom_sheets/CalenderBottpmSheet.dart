// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:provider/provider.dart';

class Calenderbottomsheet {
  void OpenCalenderbottemSheet(BuildContext context) {
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
              child: SingleChildScrollView(
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
                      margin: EdgeInsets.only(right: size.width*0.02),
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
                        decoration: BoxDecoration(),
                        child: ChangeNotifierProvider(
                          create: (context) => MyLeagusButtonSheetProvider(),
                          child: Consumer<MyLeagusButtonSheetProvider>(
                            builder: (context, provider, child) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child:
                                        Image.asset('assets/icons/img_45.png',width: size.width*0.1,),
                                  ),
                                  SizedBox(height: size.height*0.01),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'MY DAYS IN ROW',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'public',
                                            fontSize: size.width*0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: size.height*0.04),
                                  Container(
                                    height: size.height*0.2,
                                    width: size.width*0.8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${provider.selectedDays.length.toString()}',
                                          style: TextStyle(
                                              fontSize: size.width*0.04,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff39E272)),
                                        ),
                                        // Text(
                                        //   '12',
                                        //   style: TextStyle(
                                        //       fontSize: 40.sp,
                                        //       fontWeight: FontWeight.bold,
                                        //       color: Color(0xff39E272)),
                                        // ),
                                        Text(
                                          'DAYS',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: size.height*0.01),
                                        Text(
                                          'Started: June 1 2023',
                                          style: TextStyle(
                                              fontSize: size.width*0.03,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: size.height*0.03),
                                  Container(
                                    height: size.height*0.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: CalendarCarousel<Event>(
                                      prevDaysTextStyle:
                                          TextStyle(color: Colors.grey),
                                      onDayPressed: provider.handleDayPressed,
                                      markedDatesMap: provider.markedDatesMap,
                                      selectedDayButtonColor: Color(0xff39E272),
                                      headerTextStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffF6623A)),
                                      weekendTextStyle:
                                          TextStyle(color: Colors.black),
                                      iconColor: Color(0xffF6623A),
                                      selectedDateTime: DateTime.now(),
                                      daysTextStyle:
                                          TextStyle(color: Colors.black),
                                      weekdayTextStyle:
                                          TextStyle(color: Colors.grey),
                                      weekDayFormat: WeekdayFormat.short,
                                      markedDateShowIcon: true,
                                      customDayBuilder: (
                                        // Use customDayBuilder instead of cellBuilder
                                        bool isSelectable,
                                        int index,
                                        bool isSelectedDay,
                                        bool isToday,
                                        bool isPrevMonthDay,
                                        TextStyle textStyle,
                                        bool isNextMonthDay,
                                        bool isThisMonthDay,
                                        DateTime day,
                                      ) {
                                        final events = provider.markedDatesMap
                                            .getEvents(day);
                                        final isSelected =
                                            provider.selectedDays.contains(day);
                                        final textColor = isSelected || isToday
                                            ? Colors.white
                                            : textStyle.color;
                                        final backgroundColor = isSelected
                                            ? Color(0xff39E272)
                                            : Colors.transparent;

                                        return GestureDetector(
                                          onTap: () => provider
                                              .handleDayPressed(day, events),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: backgroundColor,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Text(
                                                day.day.toString(),
                                                style: TextStyle(
                                                  color: textColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 24),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'BEST RESULT:',
                                      style: TextStyle(
                                          fontSize: size.width*0.04,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Container(
                                    height: 66,
                                    width: 344,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Days amount:',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            RichText(
                                              text: TextSpan(
                                                text: provider
                                                        .selectedDays.length
                                                        .toString() +
                                                    ' 43 DAYS', // Update selected days count
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xffF6623A),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Text(
                                              'Period:',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            RichText(
                                              text: TextSpan(
                                                text:
                                                    'March 1 2023 - April 12 2023',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xffF6623A),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: size.height*0.05),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        )),

                    SizedBox(height: size.height*0.05,),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void openGradientBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                          SizedBox(width: size.width * 0.2),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, right: 10),
                            child: Text(
                              ' CHOOSE LANGUAGE',
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
                              margin: EdgeInsets.only(left: 20, top: 10),
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
                      Container(
                        width: size.width * 0.9,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/img_25.png',
                                    width: 34,
                                    height: 34,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'English',
                                    style: TextStyle(
                                        fontFamily: 'public',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      provider.language = 'English';
                                      provider.flage =
                                          'assets/images/img_25.png';
                                      provider.langugeSeleted1();
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
                                                width: 100,
                                                height: 50,
                                                child: Center(
                                                  child: Text(
                                                    'Choose',
                                                    style: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/img_6.png',
                                    width: 34,
                                    height: 34,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Latvian',
                                    style: TextStyle(
                                        fontFamily: 'piblic',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      provider.language = 'Latvian';
                                      provider.flage =
                                          'assets/images/img_6.png';
                                      provider.langugeSeleted2();
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
                                                width: 100,
                                                height: 50,
                                                child: Center(
                                                  child: Text(
                                                    'Choose',
                                                    style: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/img_7.png',
                                    width: 34,
                                    height: 34,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Russian',
                                    style: TextStyle(
                                        fontFamily: 'piblic',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      provider.language = 'Russian';
                                      provider.flage =
                                          'assets/images/img_7.png';
                                      provider.langugeSeleted3();
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
                                                width: 100,
                                                height: 50,
                                                child: Center(
                                                  child: Text(
                                                    'Choose',
                                                    style: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                ),
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
