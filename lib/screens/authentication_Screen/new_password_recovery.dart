// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../custom_widgets/custom_round_button.dart';
import '../../custom_widgets/custom_text_form_field.dart';
import '../dashboard/main_page.dart';

class NewPasswordRecovery extends StatefulWidget {
  NewPasswordRecovery({super.key});

  @override
  State<NewPasswordRecovery> createState() => _NewPasswordRecoveryState();
}

class _NewPasswordRecoveryState extends State<NewPasswordRecovery> {
  TextEditingController createpasswordContriller = TextEditingController();

  TextEditingController confromPasswordContriller = TextEditingController();

  bool createpassword = true;
  final formkey = GlobalKey<FormState>();
  bool _obscureText = true;

  FocusNode passwordfocus = FocusNode();

  FocusNode emailfoucs = FocusNode();

  @override
  void dispose() {
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
        body: Stack(
          children: [
            Container(
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
                      Text(
                        'Password recovery'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.05,
                            letterSpacing: 1.2,
                            wordSpacing: 1.4,
                            fontFamily: 'public'),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width * 0.1),
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PASSWORD',
                              style: TextStyle(
                                  fontFamily: 'public',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            CustomTextField(
                              textStyle: TextStyle(
                                  fontSize: size.width * 0.05,
                                  color: Colors.black),
                              hintstyle: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                              controller: createpasswordContriller,
                              hintText: 'Enter new password',
                              focusNode: emailfoucs,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "password can't be empty";
                                }

                                return null;
                              },
                            ),
                            SizedBox(height: size.height * 0.06),
                            Text(
                              'CONFIRM PASSWORD',
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
                                  color: Colors.black),
                              hintstyle: TextStyle(
                                fontSize: size.width * 0.04,
                              ),
                              obscureText: _obscureText && createpassword,
                              controller: confromPasswordContriller,
                              focusNode: passwordfocus,
                              hintText: 'Confirm your password',
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
                                if (value != createpasswordContriller.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.2,
                      ),

                       if(formkey.currentState != null &&
                formkey.currentState!.validate() && createpasswordContriller.text.isNotEmpty &&
                    confromPasswordContriller.text.isNotEmpty)
                           CustomRoundButon(
                              title: 'CREATE NEW PASSWORD',
                              textStyle: TextStyle(
                                fontFamily: 'medium',
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                wordSpacing: 0.5,
                              ),
                              width: size.width * 0.6,
                              height: size.height * 0.075,
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(
                                  color: Color(0xffFFD8B7), width: 4),
                              color: Color(0xffF6623A),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainPage()));
                                // if (formkey.currentState!.validate()){
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                                // }
                              },
                            )
                          else Container(
                              width: size.width * 0.6,
                              height: size.height * 0.075,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Color(0xffDEDEDE),
                              ),
                              child: Center(
                                child: Text(
                                  'CREATE NEW PASSWORD',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
