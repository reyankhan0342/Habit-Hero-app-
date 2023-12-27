// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../custom_widgets/custom_round_button.dart';
import 'new_password_recovery.dart';

class PasswordRecoveryOTP extends StatelessWidget {
  PasswordRecoveryOTP({super.key});

  List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());

  FocusNode _focusNode=FocusNode();
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
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    Text(
                      'CONFIRM REQUEST',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: size.width*0.04,
                          letterSpacing: 1.2,
                          wordSpacing: 1.4,
                          fontFamily: 'public'),
                    ),
                    SizedBox(
                      height: size.width*0.01,
                    ),
                    Text(
                      ' We sent you a verification code to you it',
                      style: TextStyle(
                        fontFamily: 'public',
                        fontSize: size.width*0.03,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3C2E3C),
                      ),
                    ),
                    SizedBox(height:2,),
                    Text(
                      ' julia@habithero.com',
                      style: TextStyle(
                        fontFamily: 'public',
                        fontSize:size.width*0.03,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.09,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: size.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ENTER VERIFICATION CODE',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:size.width*0.03,
                              fontFamily: 'public',
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:size.width*0.06, right: size.width*0.07, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(6, (index) {
                         return  RawKeyboardListener(
                            focusNode: _focusNode,
                            onKey: (RawKeyEvent event) {
                              if (event is RawKeyDownEvent && event.logicalKey == LogicalKeyboardKey.backspace) {
                                if (index > 0) {
                                  // Clear the current TextField
                                  otpControllers[index].clear();

                                  // Move focus to the previous TextField
                                  FocusScope.of(context).previousFocus();
                                }
                              }
                            },
                            child: Container(
                              width: 40,
                              height: 46,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                obscureText: true,
                                controller: otpControllers[index],
                                onChanged: (value) {
                                  if (value.length == 1 && index < 5) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSubmitted: (value) {
                                  if (value.isEmpty && index > 0) {
                                    otpControllers[index - 1].clear();
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                style: Theme.of(context).textTheme.headline6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  counterText: '',
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          );


                        }),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    CustomRoundButon(
                      title: 'CONFIRM',
                      textStyle: TextStyle(
                        fontFamily: 'medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 1.5,
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.073,
                      borderRadius: BorderRadius.circular(80),
                      border: Border.all(color: Color(0xffFFD8B7), width: 4),
                      color: Color(0xffF6623A),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPasswordRecovery()));
                        // if (formkey.currentState!.validate()){
                        //
                        // }
                      },
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
