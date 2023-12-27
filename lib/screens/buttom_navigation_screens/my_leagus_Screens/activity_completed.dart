// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../custom_widgets/custom_rows/custom_activty_leagus.dart';
import 'owner_league.dart';

class ActivityCompleted extends StatelessWidget {
  const ActivityCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.fill),
          ),
        ),
        SingleChildScrollView(
          child: Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 175,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),

                    title: Text(
                      'Belly league',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerLeagus()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),
                    title: Text(
                      'Belly league',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerLeagus()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),
                    title: Text(
                      'Belly league',
                      style: TextStyle(
                        fontSize:  size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerLeagus()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),
                    title: Text(
                      'Belly league',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerLeagus()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),
                    title: Text(
                      'Belly league',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: 0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {},
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),
                    title: Text(
                      'Belly league',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerLeagus()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomActivtyLeagus(
                    image1: AssetImage('assets/images/img_22.png'),
                    title: Text(
                      'Belly league',
                      style: TextStyle(
                          fontSize: size.width*0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'public'),
                    ),
                    owner: Text(
                      'Me',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    categries: Text(
                      'All',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    goal: Text(
                      '2 000 POINTS',
                      style: TextStyle(
                          fontFamily: 'public',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.03,
                          color: Colors.black),
                    ),
                    OnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerLeagus()));
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
