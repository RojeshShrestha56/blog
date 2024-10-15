import 'package:blog_app/screens/login/login-email.dart';
import 'package:flutter/material.dart';

import '../../common/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Padding(
            padding:
                EdgeInsets.fromLTRB(15, deviceHeight(context) * 0.14, 15, 0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Logo(
                      fontHeight: 45,
                      color: Colors.white,
                      background: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.red,
                      child: Text(
                        "We Are Preparing Something Great For You!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginEmail()));
                          },
                          heroTag: null,
                          label: Text('Continue with Apple'), // <-- Text
                          backgroundColor: Colors.black,
                          icon: Icon(
                            // <-- Icon
                            Icons.phone_iphone,
                            size: 24.0,
                          ),
                          // onPressed: () {
                          //   print('hi');
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //       builder: (context) => LoginEmail()));
                          // },
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: FloatingActionButton.extended(
                          heroTag: null,

                          label: Text('Continue with Google'), // <-- Text
                          backgroundColor: Colors.blue,
                          icon: Icon(
                            // <-- Icon
                            Icons.g_mobiledata,
                            size: 24.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginEmail()));
                          },
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: FloatingActionButton.extended(
                          heroTag: null,

                          label: Text('Continue with Email'), // <-- T
                          backgroundColor: Colors.red,
                          icon: Icon(
                            // <-- Icon
                            Icons.mail,
                            size: 24.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginEmail()));
                          },
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Center(
                      child: Container(child: Text('Already have account?')),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 40.0),
                      child: Center(
                        child: Container(
                            child: Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 12.0),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'By continuing, you accept the ',
                              ),
                              TextSpan(
                                  text: 'Terms Of Use ',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline)),
                              TextSpan(
                                text: 'and ',
                              ),
                              TextSpan(
                                text: 'Privacy Policy ',
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        )),
                      )),
                ])),
      ),
    ));
  }
}
