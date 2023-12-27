// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:provider/provider.dart';

class MassagesButtomSheet {
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
                              'assets/icons/img_46.png',
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'MESSAGE US',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'public',
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1. CHOOSE A CATEGORY',
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
                                  provider.seleteditems = true;
                                  provider.notifyListeners();
                                  provider.setLegusCategory(newValue as String);
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
                                '2. DESCRIBE A BUG',
                                style: TextStyle(
                                    fontFamily: 'public',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              width: 500,
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,
                                maxLines: 50,
                                decoration: InputDecoration(
                                  hintText: 'Enter text here',
                                  contentPadding: EdgeInsets.all(
                                      10), // Optional: Adjust padding within the TextField
                                  border: InputBorder
                                      .none, // Optional: Remove the default border
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                provider.seleteditems
                                    ? GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 200,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF6623A),
                                            borderRadius:
                                                BorderRadius.circular(80),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'SUBMIT & SEND',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'public',
                                                  fontSize: 17,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        width: 200,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDEDEDE),
                                          borderRadius:
                                              BorderRadius.circular(80),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'SUBMIT & SEND',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'public',
                                                fontSize: 17,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                              ],
                            )
                          ],
                        ),
                      ),
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
}
