// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/custom_widgets/custom_round_button.dart';

class PremiumBottomSheet {

  void PaymentDoneBottomSheet(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFFF6EE),
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
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
                    Center(
                      child: Image.asset("assets/icons/img_41.png",width:size.width*0.2 ,),
                    ),
                    SizedBox(height: 8),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [Color(0xffECCA19), Color(0xffEC4F1D)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      child: Text(
                        'PREMIUM ACCOUNT',
                        style: TextStyle(
                          fontSize: size.width*0.05,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Get unlimited access to all workouts, join \n leagues and compete.',
                      style: TextStyle(
                          fontSize: size.width*0.03,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: size.height*0.04),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: size.height*0.2,
                        width: size.width*0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.black == 0
                                ? Color(0xffF6623A)
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '€9,99 / month',
                              style: TextStyle(
                                color: Color(0xff39E272),
                                fontSize: size.width*0.04,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: size.height*0.01),
                            RichText(
                              text: TextSpan(
                                text: 'Monthly payment. Per year: €119.88 ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: size.width*0.03,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                height: size.height*0.2,
                      width: size.width*0.8,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 96,
                              width: 340,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.green == 1
                                      ? Color(0xffF6623A)
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '€7,50 / месяц',
                                    style: TextStyle(
                                      color: Color(0xff39E272),
                                      fontSize: size.width*0.04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: size.height*0.01),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Monthly payment. Per year: €119.88 ',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: size.width*0.03,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 90,
                            child: Container(
                              height: 20,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xffF6623A),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  'SAVE 25%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width*0.03,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height*0.05,
                    ),
                    Text(
                      'Are you the new Ambassador for APP?',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'public'),
                    ),
                    SizedBox(
                      height: 0.01,
                    ),
                    Text(
                      'Redeem code here',
                      style: TextStyle(
                          fontSize: size.width*0.03,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'public'),
                    ),
                    SizedBox(height: size.width*0.1),
                    Center(
                        child: CustomRoundButon(
                      title: 'BUY PREMIUM ACCOUNT',
                      textStyle: TextStyle(
                          fontFamily: 'public',
                          fontSize: size.width*0.03,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      color: Color(0xffF6623A),
                      onTap: () {
                        statusBottomSheet(context);
                      },
                      width: 220,
                      height: 50,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.orangeAccent, width: 2),
                    )),
                    SizedBox(height: 16),
                    Text(
                      'No obligations. Cancel at any time.',
                      style: TextStyle(fontSize: size.width*0.03),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void statusBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFFF6EE),
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
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
                  Center(
                    child: Image.asset(
                      "assets/icons/img_41.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(height: 8),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Color(0xffECCA19), Color(0xffEC4F1D)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds);
                    },
                    child: Text(
                      'PREMIUM ACCOUNT',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Get unlimited access to all workouts, join \n leagues and compete.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 300,
                      width: 390,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.black == 0
                              ? Color(0xffF6623A)
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            'assets/icons/img_44.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'STATUS IS ACTIVE',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                fontFamily: 'public'),
                          ),
                          Text(
                            'Your subscription is valid until 22/06/24',
                            style: TextStyle(
                              fontFamily: 'public',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'CANCEL SUBSCRIPTION',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'public',
                        fontWeight: FontWeight.w700,
                        color: Colors.red),
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
