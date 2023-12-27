// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_import

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../providers/my_leagus_button_sheet_provider.dart';

import '../custom_widgets/custom_round_button.dart';
import '../custom_widgets/custom_small_button.dart';

class PathScreenCatagesButtomSheet {
  List<int> selectedItem = [];


  List images = [
    'assets/images/exercises_images/img_1.png',
    'assets/images/exercises_images/img_2.png',
    'assets/images/exercises_images/img_3.png',
    'assets/images/exercises_images/img_1.png',
    'assets/images/exercises_images/img_4.png',
    'assets/images/exercises_images/img_5.png',

  ];

  List<bool> isFavoriteList = List.filled(5, false);

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
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg2.png')),
            ),
            child: Column(
              children: [
                SizedBox(height: 5),
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
                        'assets/images/img_15.png',
                        width: 86,
                        height: 86,
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
                    child: Column(children: [
                      Text(
                        'WARM UP',
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
                        'Choose the workout you want to do today',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'public',
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                    ])),
                ChangeNotifierProvider(
                  create: (context) => MyLeagusButtonSheetProvider(),
                  child: Consumer<MyLeagusButtonSheetProvider>(
                    builder: (context, provider, child) {
                      return CarouselSlider(
                        options: CarouselOptions(
                          height: 400,
                          enableInfiniteScroll: false,
                          viewportFraction: 0.8,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        ),
                        items: images.asMap().entries.map((entry) {
                          final int index = entry.key;
                          final String image = entry.value;
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: size.width,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  //  image: DecorationImage(image: AssetImage(image,),fit: BoxFit.cover),
                                  border: Border.all(
                                      color: Color(0xffF256BD), width: 2),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image.asset(
                                        image,
                                        fit: BoxFit.fill,
                                        width: size.width,
                                        height: size.height * 0.3,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/img_19.png',
                                            height: 40,
                                            width: 40,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'reyan.',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (provider.selectedItem
                                              .contains(index)) {
                                            provider.selectedItem.remove(index);
                                          } else {
                                            provider.selectedItem.add(index);
                                          }
                                        },
                                        child: Icon(
                                          provider.selectedItem.contains(index)
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      right: 10,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Morning refresh",
                                                style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xffF2C94C),
                                                  ),
                                                  Text(
                                                    "4.8",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                            children: [
                                              CustomSmallButton(
                                                  width: 55,
                                                  height: 25,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1),
                                                  title: 'BACK',
                                                  onTap: () {},
                                                  color: Colors.white,
                                                  textStyle: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 10)),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              CustomSmallButton(
                                                  width: 60,
                                                  height: 25,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1),
                                                  title: 'CARDIO',
                                                  onTap: () {},
                                                  color: Colors.white,
                                                  textStyle: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 10)),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              CustomSmallButton(
                                                  width: 85,
                                                  height: 25,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1),
                                                  title: 'SHOULDERS',
                                                  onTap: () {},
                                                  color: Colors.white,
                                                  textStyle: TextStyle(
                                                      fontFamily: 'piblic',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 10)),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/icons/img_27.png",
                                                height: 22,
                                                width: 22,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "MEDIUM",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Image.asset(
                                                "assets/icons/img_28.png",
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                "10 MINUTES",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  ///  open meditation of bottom navigation

  openGradientBottomSheetMeditation(BuildContext context) {
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
                image: AssetImage('assets/images/bg2.png'),
              ),
            ),
            child: ChangeNotifierProvider(
              create: (context) => MyLeagusButtonSheetProvider(),
              child: Consumer<MyLeagusButtonSheetProvider>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      SizedBox(height: 5),
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
                              'assets/images/img_15.png',
                              width: 86,
                              height: 86,
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
                        child: Column(children: [
                          Text(
                            'WARM UP',
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
                            'Choose the workout you want to do today',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'public',
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 32,
                          ),
                        ]),
                      ),
                      ChangeNotifierProvider(
                        create: (context) => MyLeagusButtonSheetProvider(),
                        child: Consumer<MyLeagusButtonSheetProvider>(
                          builder: (context, provider, child) {
                            //var index = 0;
                            return CarouselSlider(
                              options: CarouselOptions(
                                height: 300,
                                enableInfiniteScroll: false,
                                viewportFraction: 0.8,
                                enlargeCenterPage: true,
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.scale,
                              ),
                              items: images.asMap().entries.map((entry) {
                                //  final int index = entry.key;
                                final String image = entry.value;
                                return Builder(
                                  builder: (BuildContext context) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (!provider.showGreenContainer) {
                                          // Handle image click action here
                                        }
                                      },
                                      child: Container(
                                        width: size.width,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: Color(0xffF256BD),
                                              width: 2),
                                        ),
                                        child: Stack(
                                          children: [
                                            provider.showGreenContainer == false
                                                ? Container(
                                                    width: size.width,
                                                    height: 400,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: Color(0xff48DC7A)
                                                          .withOpacity(0.5),
                                                    ),
                                                    child: Image.asset(
                                                      'assets/icons/img_61.png',
                                                    ),
                                                  )
                                                : ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Image.asset(
                                                      image,
                                                      fit: BoxFit.fill,
                                                      width: size.width,
                                                    ),
                                                  ),
                                            Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/img_19.png',
                                                    height: 40,
                                                    width: 40,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'reyan.',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Positioned(
                        bottom: 20,
                        left: 10,
                        right: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  child: Text(
                                    "Stretching",
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff0CBEF8),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Align(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/img_60.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Select difficulty level:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: 'public',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomSmallButton(
                                  width: 80,
                                  height: 35,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  title: 'BEGINNER',
                                  onTap: () {},
                                  color: Colors.white,
                                  textStyle: TextStyle(
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                CustomSmallButton(
                                  width: 90,
                                  height: 35,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  title: 'MEDIUM',
                                  onTap: () {
                                    provider.meiumButton();
                                  },
                                  color: provider.mediumSelected == true
                                      ? Color(0xff0CBEF8)
                                      : Colors.white,
                                  textStyle: TextStyle(
                                    color: provider.mediumSelected == true
                                        ? Colors.white
                                        : Colors.black,
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                CustomSmallButton(
                                  width: 105,
                                  height: 35,
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  title: 'ADVANCED',
                                  onTap: () {},
                                  color: Colors.white,
                                  textStyle: TextStyle(
                                    fontFamily: 'public',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                provider.mediumSelected == false
                                    ? Container(
                                        width: 200,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDEDEDE),
                                          borderRadius:
                                              BorderRadius.circular(80),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'ADD AN EXERCISE',
                                            style: TextStyle(
                                              fontFamily: 'public',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    : CustomRoundButon(
                                        borderRadius: BorderRadius.circular(80),
                                        title: 'ADD AN EXERCISE',
                                        textStyle: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        color: Color(0xffF6623A),
                                        onTap: () {
                                          provider.toggleGreenContainer();
                                          provider.notifyListeners();
                                        },
                                        width: 200,
                                        height: 50,
                                      ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
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
