// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/screens/authentication_Screen/password_recovery_otp.dart';

import '../../custom_widgets/custom_round_button.dart';
import '../../custom_widgets/custom_text_form_field.dart';


class PasswordRecovery extends StatelessWidget {
   PasswordRecovery({super.key});

  TextEditingController emailContriller = TextEditingController();
  FocusNode emailfoucs = FocusNode();
   final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
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
                        height: size.height * 0.2,
                      ),
                      Padding(
                        padding:  EdgeInsets.all(size.width*0.020),
                        child: Text(
                          'Password recovery'.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize:size.width*0.05,
                              fontWeight: FontWeight.w600,
                            color: Color(0xff3C2E3C),),
                        ),
                      ),

                      SizedBox(height: size.height*0.03,),

                      Container(
                        width: size.width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: size.width*0.01),
                              child: Text(
                                'E-MAIL',
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

                              textStyle: TextStyle(
                                fontSize: size.width*0.05,
                                color: Colors.black,fontFamily: 'public',

                              ),
                              hintstyle: TextStyle(
                                fontSize: size.width*0.04,
                              ),
                              controller: emailContriller,
                              hintText: 'Enter your email',
                              focusNode: emailfoucs,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty) {
                                  return "Email can't be empty";
                                }
                                if (!value.contains('@gmail.com')) {
                                  return "Enter valid Email";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: size.height*0.2),

                      CustomRoundButon(
                        title: 'CONTINUE',
                        textStyle: TextStyle(
                          fontFamily: 'medium',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width*0.04,
                          letterSpacing: 1.5,
                        ),
                        width: size.width * 0.45,
                        height: size.height * 0.070,
                        borderRadius: BorderRadius.circular(80),
                        border: Border.all(
                            color: Color(0xffFFD8B7), width: 3),
                        color: Color(0xffF6623A),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PasswordRecoveryOTP()));
                          // if (formkey.currentState!.validate()){
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context) => MainPage()));
                          // }
                        },
                      ),

                      SizedBox(height: size.height*0.01,),

                      TextButton(
                          onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
