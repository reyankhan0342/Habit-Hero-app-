// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'profile_catages_sheets.dart';

class ProfileEditSheet {
  openGradientBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    EditProfileSheets().openGradientBottomSheetAvatar(context);
                  },
                  child: Container(
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16.0)),
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Avatar',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    EditProfileSheets().openGradientBottomSheetName(context);
                  },
                  child: Container(
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Name and Surname',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    EditProfileSheets()
                        .openGradientBottomSheetUsername(context);
                  },
                  child: Container(
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Username',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    EditProfileSheets()
                        .openGradientBottomSheetPassword(context);
                  },
                  child: Container(
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Password',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    EditProfileSheets()
                        .openGradientBottomSheetSocialMedia(context);
                  },
                  child: Container(
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'Edit My Socials',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    EditProfileSheets().openGradientBottomSheetEmail(context);
                  },
                  child: Container(
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(16.0)),
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'Edit E-Mail',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.03,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 390,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xffB3B3B3),
                    ),
                    child: Center(
                      child: Text(
                        'CLOSE',
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: size.width*0.04,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'public'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
