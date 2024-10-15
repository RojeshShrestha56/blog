import 'dart:io';

import 'package:blog_app/common/animation/slide-transistion-route.dart';
import 'package:blog_app/screens/login/login-email.dart';
import 'package:blog_app/screens/login/login-options.dart';
import 'package:blog_app/screens/login/login-password.dart';
import 'package:blog_app/screens/login/login-verify.dart';
import 'package:blog_app/screens/login/reset-password.dart';
import 'package:blog_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class LoginVerify extends StatelessWidget {
  const LoginVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPassword()),
                          (route) => false);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.blue, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // color: Colors.red,
                  child: Text(
                    "Verification Code",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    // color: Colors.red,
                    child: Text(
                      "We send code to your email address",
                      style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                ),
                Center(
                  child: OTPTextField(
                    length: 6,
                    otpFieldStyle: OtpFieldStyle(
                      backgroundColor: Colors.grey[200]!,
                      borderColor: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 45,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onChanged: (_) {},
                    onCompleted: (_) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.of(context).push(SlideTransistionRoute(
                            child: ResetPassword(),
                            direction: AxisDirection.right));
                      },
                      heroTag: null,
                      label: Text('Continue'), // <-- Text
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          )
        ])));
  }
}
