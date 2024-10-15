import 'package:blog_app/common/animation/slide-transistion-route.dart';
import 'package:blog_app/repositary/auth/signin.dart';
import 'package:blog_app/screens/login/login-options.dart';
import 'package:blog_app/screens/login/login-password.dart';
import 'package:flutter/material.dart';

class LoginEmail extends StatelessWidget {
  LoginEmail({Key? key}) : super(key: key);

  final api = SigninRepo();

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
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);
              },
              child: Icon(Icons.arrow_back, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.blue, // <-- Button color
                onPrimary: Colors.red, // <-- Splash color
              ),
            ),
          ),
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
                    "Welcome",
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
                      "Enter your username or email address",
                      style: TextStyle(fontSize: 15, letterSpacing: 0.4),
                    ),
                  ),
                ),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Username or Email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        // api.signinUser("rupakt525@gmail.com", "rupakthapa");
                        Navigator.of(context).push(SlideTransistionRoute(
                            child: LoginPassword(),
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
