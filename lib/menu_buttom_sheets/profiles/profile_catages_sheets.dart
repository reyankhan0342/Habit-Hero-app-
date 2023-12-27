// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:provider/provider.dart';

import '../../custom_widgets/custom_text_form_field.dart';

class EditProfileSheets {
  TextEditingController emailContriller = TextEditingController();
  FocusNode emailFocus = FocusNode();

  /// Edit Profile Avatar

  openGradientBottomSheetAvatar(BuildContext context) {
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
                            width: size.width*0.2,
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
                                SizedBox(
                                  height: size.height*0.1,
                                ),
                                Text(
                                  'Change Avatar',
                                  style: TextStyle(
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width*0.04),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  'My Avatar',
                                  style: TextStyle(
                                      fontFamily: 'public',
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width*0.03),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      provider.pickImageGallery(context);
                                    },
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage: provider.Image != null
                                          ? FileImage(provider.Image!)
                                          : null,
                                      child: provider.Image == null
                                          ? Image.asset(
                                              'assets/images/img_34.png')
                                          : null,
                                    )),
                                SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    provider.Image == null
                                        ? Text(
                                            'UPLOAD',
                                            style: TextStyle(
                                                fontFamily: 'public',
                                                fontWeight: FontWeight.w700,
                                                fontSize: size.width*0.03,
                                                color: Color(0xffF6623A)),
                                          )
                                        : Text(
                                            'DELETE',
                                            style: TextStyle(
                                                fontFamily: 'public',
                                                fontWeight: FontWeight.w700,
                                                fontSize: size.width*0.03,
                                                color: Color(0xffF6623A)),
                                          ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height*0.2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    provider.Image == null
                                        ? Container(
                                            width: 200,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0XFFDEDEDE),
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'SAVE CHANGES',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'public',
                                                    fontSize: size.width*0.03,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        : Container(
                                            width: 200,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF6623A),
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'SAVE CHANGES',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'public',
                                                    fontSize: size.width*0.03,
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
                      ),
                    );
                  },
                ),
              )),
        );
      },
    );
  }

  /// Edit User Email

  openGradientBottomSheetEmail(BuildContext context) {
    Size size=MediaQuery.of(context).size;
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
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: size.width*0.02,
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
                        SizedBox(
                          height: size.height*0.1,
                        ),
                        Text(
                          ' Change E-Mail',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.05),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ENTER A NEW E-MAIL',
                            style: TextStyle(
                                fontFamily: 'public',
                                fontSize: size.width*0.03,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          controller: emailContriller,
                          focusNode: emailFocus,
                          hintText: ' Email',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email  can't be empty";
                            }
                          },
                        ),
                        SizedBox(
                          height: size.height*0.3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffF6623A),
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Center(
                                child: Text(
                                  'SAVE CHANGES',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'public',
                                      fontSize: size.width*0.03,
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
              ),
            ),
          ),
        );
      },
    );
  }

  /// Edit User Name //////////////
  TextEditingController nameContriller = TextEditingController();
  FocusNode nameFocus = FocusNode();
  final formkey = GlobalKey<FormState>();
  openGradientBottomSheetName(BuildContext context) {
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
                        SizedBox(
                          height: size.height*0.2,
                        ),
                        Text(
                          'Change Name and Surname',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.05),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'FULL NAME',
                            style: TextStyle(
                                fontFamily: 'public',
                                fontSize: size.width*0.04,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Form(
                          key: formkey,
                          child: CustomTextField(
                            controller: nameContriller,
                            focusNode: nameFocus,
                            hintText: 'New  name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "name  can't be empty";
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            formkey.currentState != null &&
                                    formkey.currentState!.validate()
                                ? Container(
                                    width: 200,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6623A),
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'SAVE CHANGES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'public',
                                            fontSize:
                                            size.width*0.03,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: 200,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDEDEDE),
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'SAVE CHANGES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'public',
                                            fontSize: size.width*0.03,
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
              ),
            ),
          ),
        );
      },
    );
  }

  ///    Edit User Password ///////
  TextEditingController currentPasswordContriller = TextEditingController();
  FocusNode currentPasswordFocus = FocusNode();
  TextEditingController newPasswordContriller = TextEditingController();
  FocusNode newPasswordFocus = FocusNode();
  TextEditingController conformPasswordContriller = TextEditingController();
  FocusNode conformPasswordFocus = FocusNode();

  bool currentPassword = true;
  bool newPassword = true;
  bool conformPassword = true;
  bool obscureText = true;
  openGradientBottomSheetPassword(BuildContext context) {
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
                          Form(
                            key: formkey,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.9,
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    ' Change Password',
                                    style: TextStyle(
                                        fontFamily: 'public',
                                        fontWeight: FontWeight.w700,
                                        fontSize: size.width*0.05),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'CURRENT PASSWORD',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width*0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  CustomTextField(
                                    controller: currentPasswordContriller,
                                    focusNode: currentPasswordFocus,
                                    hintText: ' Password',
                                    obscureText: provider.obscureText,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Password  can't be empty";
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'NEW PASSWORD',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width*0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  CustomTextField(
                                    controller: newPasswordContriller,
                                    focusNode: newPasswordFocus,
                                    hintText: ' Password',
                                    obscureText: provider.obscureText,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Password  can't be empty";
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'CONFIRM PASSWORD',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width*0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  CustomTextField(
                                    controller: conformPasswordContriller,
                                    focusNode: conformPasswordFocus,
                                    hintText: ' Password',
                                    obscureText: provider.obscureText,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "password  can't be empty";
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      formkey.currentState != null &&
                                              formkey.currentState!.validate()
                                          ? Container(
                                              width: 200,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xffF6623A),
                                                borderRadius:
                                                    BorderRadius.circular(80),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'SAVE CHANGES',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'public',
                                                      fontSize: size.width*0.03,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              width: 200,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xffDEDEDE),
                                                borderRadius:
                                                    BorderRadius.circular(80),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'SAVE CHANGES',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'public',
                                                      fontSize: size.width*0.03,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )),
        );
      },
    );
  }

  ///  Edit Social Media ////////////
  TextEditingController userNameContriller = TextEditingController();
  FocusNode usrNameFocus = FocusNode();
  openGradientBottomSheetSocialMedia(BuildContext context) {
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
                        SizedBox(
                          height: size.height*0.2,
                        ),
                        Text(
                          'You have not added any \n social network',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.04),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '+ADD SOCIAL',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontWeight: FontWeight.w700,
                                  fontSize: size.width*0.03,
                                  color: Color(0xffF6623A)),
                            )),
                        SizedBox(
                          height: size.height*0.2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xffF6623A),
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Center(
                                child: Text(
                                  'SAVE CHANGES',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'public',
                                      fontSize: size.width*0.03,
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
              ),
            ),
          ),
        );
      },
    );
  }

  ///  Edit Username of /////////
  TextEditingController userNamecontriller = TextEditingController();
  FocusNode usrNamefocus = FocusNode();

  openGradientBottomSheetUsername(BuildContext context) {
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
                        SizedBox(
                          height: size.height*0.1,
                        ),
                        Text(
                          ' Change Username',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.05),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'USERNAME',
                            style: TextStyle(
                                fontFamily: 'public',
                                fontSize: size.width*0.04,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Form(
                          key: formkey,
                          child: CustomTextField(
                            controller: userNamecontriller,
                            focusNode: usrNamefocus,
                            hintText: ' username',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "username  can't be empty";
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            formkey.currentState != null &&
                                    formkey.currentState!.validate()
                                ? GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 200,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6623A),
                                        borderRadius: BorderRadius.circular(80),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SAVE CHANGES',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'public',
                                              fontSize: size.width*0.03,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDEDEDE),
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'SAVE CHANGES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'public',
                                            fontSize: size.width*0.03,
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
              ),
            ),
          ),
        );
      },
    );
  }
}
