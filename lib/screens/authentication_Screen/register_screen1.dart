// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/screens/authentication_Screen/register_screen2.dart';

import '../../custom_widgets/custom_round_button.dart';
import '../../custom_widgets/custom_text_form_field.dart';


class RegisterScreen1 extends StatefulWidget {
  const RegisterScreen1({super.key});

  @override
  State<RegisterScreen1> createState() => _RegisterScreen1State();
}

class _RegisterScreen1State extends State<RegisterScreen1> {
  TextEditingController emailContriller = TextEditingController();
  TextEditingController passwordContriller = TextEditingController();
  TextEditingController usernameContriller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  bool createpassword = true;
  bool  comfromPassowod=true;
  bool _obscureText = true;

  FocusNode passwordfocus = FocusNode();
  FocusNode emailfoucs = FocusNode();
  FocusNode usernamefouce=FocusNode();

  @override
  void dispose() {
    super.dispose();

    emailfoucs.dispose();
    passwordfocus.dispose();
    usernamefouce.dispose();
    emailContriller.dispose();
    passwordContriller.dispose();

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                    'CREATE ACCOUNT',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width*0.05,
                      fontFamily: 'public',
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          'E-MAIL',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size.width*0.01,
                        ),
                        CustomTextField(
                          textStyle: TextStyle(
                            fontSize: size.width*0.05,
                            color: Colors.black
                          ),
                          hintstyle: TextStyle(
                            fontSize: size.width*0.04,
                          ),
                          controller: emailContriller,
                          hintText: 'Enter your email',
                          focusNode: emailfoucs,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email can't be empty";
                            }
                            if (!value.contains('@gmail.com')) {
                              return "Enter valid Email";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height:size.height*0.05),
                        Text(
                          'CREATE USERNAME',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size.height*0.01,
                        ),
                        CustomTextField(
                          hintstyle: TextStyle(
                            fontSize: size.width*0.04,
                          ),
                          textStyle: TextStyle(
                            fontSize: size.width*0.05,
                            color: Colors.black,
                          ),
                          controller: usernameContriller,
                          hintText: 'Enter your username',
                          focusNode: usernamefouce,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "username can't be empty";
                            }

                            return null;
                          },
                        ),
                        SizedBox(height: size.height*0.05),
                        Text(
                          'PASSWORD',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size.height*0.01,
                        ),
                        CustomTextField(
                          textStyle: TextStyle(
                            fontSize:size.width*0.05,
                          ),
                          hintstyle: TextStyle(
                            fontSize: size.width*0.04
                          ),

                          obscureText: _obscureText && createpassword,
                          controller: passwordContriller,
                          focusNode: passwordfocus,
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              createpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  createpassword = !createpassword;
                                },
                              );
                            },
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "password  can't be empty";
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: size.height*0.05),
                        Text(
                          'CONFIRM PASSWORD',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize: size.width*0.03,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size.height*0.01,
                        ),
                        CustomTextField(
                          textStyle: TextStyle(
                            fontSize: size.width*0.05
                          ),
                          hintstyle: TextStyle(
                            fontSize: size.width*0.04
                          ),
                          obscureText: _obscureText && comfromPassowod,
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              createpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  comfromPassowod = !comfromPassowod;
                                },
                              );
                            },
                          ),
                          validator: (value) {

                            if (value != passwordContriller.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),

                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  CustomRoundButon(
                    title: 'Continue',
                    textStyle: TextStyle(
                      fontFamily: 'medium',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: size.width*0.05,
                      wordSpacing: 0.5,
                    ),
                    width: size.width * 0.45,
                    height: size.height * 0.080,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: Color(0xffFFD8B7), width: 3),
                    color: Color(0xffF6623A),
                    onTap: () {
                     if(formkey.currentState!.validate())
                       {
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => RegisterScreen2()));
                       }
                      // if (formkey.currentState!.validate()){
                      //
                      // }
                    },
                  ),
                  SizedBox(
                    height: size.height*.01,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontFamily: 'public',
                            fontSize: size.width*0.04,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                      ))
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
