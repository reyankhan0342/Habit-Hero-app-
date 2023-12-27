// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/screens/authentication_Screen/register_screen1.dart';
import 'package:habit_hero_2_app/screens/authentication_Screen/sign_in_screen.dart';

import 'package:provider/provider.dart';

import '../../custom_widgets/custom_image_picker.dart';
import '../../custom_widgets/custom_round_button.dart';
import '../../custom_widgets/custom_text_form_field.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  TextEditingController nameContriller = TextEditingController();
  TextEditingController ageContriller = TextEditingController();
  TextEditingController countryContriller = TextEditingController();
  TextEditingController genderContriller = TextEditingController();

  String? genderValue;
  String? countryValue;

  List genderOptions = [
    'Male',
    'Female',
    'Other ',
  ];

  List countryOptions = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'Germany',
    'France',
    'Japan',
    'India',
    'Brazil',
    'South Africa',
  ];

  final formkey = GlobalKey<FormState>();

  bool createpassword = true;

  FocusNode namefocus = FocusNode();
  FocusNode agefoucs = FocusNode();
  FocusNode countryfouce = FocusNode();
  FocusNode genderfouce = FocusNode();

  @override
  void dispose() {
    super.dispose();

    namefocus.dispose();
    agefoucs.dispose();
    genderfouce.dispose();
    countryfouce.dispose();
    nameContriller.dispose();
    ageContriller.dispose();
    countryContriller.dispose();
    genderContriller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ChangeNotifierProvider(
            create: (context) => CustomImagePicker(),
            child: Consumer<CustomImagePicker>(
              builder: (context, provider, child) {
                return Scaffold(
                  body: Stack(children: [
                    Container(
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/bg2.png'),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          key: formkey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.1,
                              ),
                              Text(
                                'COMPLETE ACCOUNT',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: size.width * 0.05,
                                  fontFamily: 'public',
                                ),
                              ),
                              SizedBox(
                                height: size.width * 0.03,
                              ),
                              SizedBox(
                                width: size.width * 0.9,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'FULL NAME',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width * 0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: size.width * 0.01,
                                    ),
                                    CustomTextField(
                                      textStyle: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Colors.black,
                                      ),
                                      hintstyle: TextStyle(
                                        fontSize: size.width * 0.04,
                                      ),
                                      controller: nameContriller,
                                      hintText: 'Name',
                                      focusNode: namefocus,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "name can't be empty";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: size.width * 0.07),
                                    Text(
                                      'AGE',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width * 0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: size.width * 0.01,
                                    ),
                                    CustomTextField(
                                      textStyle: TextStyle(
                                        fontSize: size.width * 0.05,
                                      ),
                                      hintstyle: TextStyle(
                                          fontSize: size.width * 0.04),
                                      controller: ageContriller,
                                      hintText: 'Age',
                                      focusNode: agefoucs,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "age can't be empty";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: size.height * 0.04),
                                    Text(
                                      'COUNTRY',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width * 0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      width: size.width * 0.9,
                                      height: size.height * 0.075,
                                      // Set the desired height here
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xffBDBDBD), width: 1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: DropdownButton(
                                        underline: Text(''),
                                        hint: Text(
                                          'Select Country',
                                          style: TextStyle(
                                            fontSize: size.width * 0.04,
                                          ),
                                        ),
                                        value: countryValue,
                                        iconSize: 30,
                                        isExpanded: true,
                                        // icon: Icon(Icons.keyboard_arrow_down, size: 20, color: Colors.black),
                                        onChanged: (newValue) {
                                          setState(() {
                                            countryValue = newValue
                                                as String; // Cast newValue to String
                                          });
                                        },
                                        items: countryOptions.map((value) {
                                          return DropdownMenuItem(
                                            value: value, // Use value directly
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    SizedBox(height: size.width * 0.06),
                                    Text(
                                      'GENDER',
                                      style: TextStyle(
                                          fontFamily: 'public',
                                          fontSize: size.width * 0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: size.width * 0.01,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      width: size.width * 0.9,
                                      height: size.height * 0.075,
                                      // Set the desired height here
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xffBDBDBD), width: 1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: DropdownButton(
                                        underline: Text(''),
                                        hint: Text(
                                          'Select Gender',
                                          style: TextStyle(
                                            fontSize: size.width * 0.04,
                                          ),
                                        ),
                                        value: genderValue,
                                        iconSize: 30,
                                        isExpanded: true,
                                        // icon: Icon(Icons.keyboard_arrow_down, size: 20, color: Colors.black),
                                        onChanged: (newValue) {
                                          setState(() {
                                            genderValue = newValue
                                                as String; // Cast newValue to String
                                          });
                                        },
                                        items: genderOptions.map((value) {
                                          return DropdownMenuItem(
                                            value: value, // Use value directly
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      provider.pickImage(context);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: size.width * 0.04),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.red, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            Color(0xffEDD6C1).withOpacity(0.5),
                                      ),
                                      child: CircleAvatar(
                                        backgroundImage: provider.Image != null
                                            ? FileImage(provider.Image!)
                                            : null,
                                        child: provider.Image == null
                                            ? Icon(Icons.person)
                                            : null,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: size.width * 0.01,
                                        left: size.width * 0.03),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'UPLOAD AN AVATAR',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: size.width * 0.03,
                                              fontFamily: 'public',
                                              color: Colors.red),
                                        ),
                                        Align(
                                          child: Text(
                                            '(Optional)',
                                            style: TextStyle(
                                                fontFamily: 'public',
                                                fontSize: size.width * 0.04,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.06,
                              ),
                              formkey.currentState != null &&
                                      formkey.currentState!.validate()
                                  ? CustomRoundButon(
                                      borderRadius: BorderRadius.circular(80),
                                      border: Border.all(
                                          color: Color(0xffF6623A), width: 2),
                                      title: 'COMPLETE ACCOUNT CREATION',
                                      textStyle: TextStyle(
                                        fontFamily: 'medium',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.03,
                                        wordSpacing: 0.3,
                                      ),
                                      color: Color(0xffF6623A),
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                                      },
                                      width: size.width * 0.6,
                                      height: size.height * 0.08)
                                  : Container(
                                      width: size.width * 0.6,
                                      height: size.height * 0.08,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(80),
                                        color: Color(0xffDEDEDE),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'COMPLETE ACCOUNT CREATION',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: size.width * 0.03,
                                              fontFamily: 'public',
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                              SizedBox(
                                height: size.width * 0.02,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder:
                                        (context)=>RegisterScreen1()));
                                  },
                                  child: Text(
                                    'Back',
                                    style: TextStyle(
                                        fontFamily: 'public',
                                        fontSize: size.width * 0.05,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                );
              },
            ),
          )),
    );
  }
}
