// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../custom_widgets/custom_round_button.dart';
import '../../custom_widgets/custom_text_form_field.dart';
import '../dashboard/main_page.dart';
import '../dashboard/splash_screen.dart';
import 'Password_recovery.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailContriller = TextEditingController();

  TextEditingController passwordContriller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  bool createpassword = true;

  bool _obscureText = true;

  FocusNode passwordfocus = FocusNode();
  FocusNode emailfoucs = FocusNode();

  @override
  void dispose() {
    super.dispose();

    emailfoucs.dispose();
    passwordfocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Stack(children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/bg2.png',
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Image.asset(
                    'assets/icons/img_1.png',
                    width: size.width * 0.4,
                    height: size.height * 0.2,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: size.height*0.04,),
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.05,
                      fontFamily: 'public',
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'E-MAIL',
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
                          controller: emailContriller,
                          hintText: 'Enter your email',
                          focusNode: emailfoucs,
                          textStyle: TextStyle(
                            fontSize: size.width*0.05,

                          ),
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
                        SizedBox(height: size.height*0.04),
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
                            fontSize: size.width*0.05,
                            color: Colors.black,
                          ),
                          hintstyle: TextStyle(
                            fontSize: size.width*0.04,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.016,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width*0.03,
                            fontFamily: 'public'),
                      ),
                      SizedBox(
                        width:size.width*0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PasswordRecovery()));
                        },
                        child: Text(
                          'Restore',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize:size.width*0.03,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CustomRoundButon(
                    title: 'SIGN IN',
                    textStyle: TextStyle(
                      fontFamily: 'medium',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: size.width*0.04,
                      wordSpacing: 0.5,
                    ),
                    width: size.width * 0.45,
                    height: size.height * 0.075,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: Color(0xffFFD8B7), width: 4),
                    color: Color(0xffF6623A),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));

                      // if (formkey.currentState!.validate()){
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => MainPage()));
                      // }
                    },
                  ),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen()));
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontFamily: 'public',
                            fontSize: size.width*0.04,
                            fontWeight: FontWeight.w600,
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
