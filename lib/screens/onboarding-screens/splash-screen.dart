import 'package:blog_app/common/logo.dart';
import 'package:blog_app/screens/options.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OptionScreen()),
          (route) => false);
    });

    return SafeArea(
      child: SizedBox.expand(
          child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Container(
                // color: Colors.white,
                child: Logo(
                  animationController: _animationController,
                  fontHeight: 100,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Developed by Rojesh & Rupak',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: Align(
          //       alignment: FractionalOffset.bottomCenter,
          //       child: Container(
          //           margin: EdgeInsets.only(
          //             bottom: 30.0,
          //           ),
          //           child: Text(
          //             'Powered by Us',
          //             style: TextStyle(color: Color.fromARGB(95, 14, 13, 13)),
          //           ))),
          // ),
        ],
      )),
    );
  }
}
