import 'package:blog_app/common/logo.dart';
import 'package:blog_app/screens/home.dart';
import 'package:blog_app/screens/login/login-options.dart';
import 'package:blog_app/screens/login/login-email.dart';
import 'package:blog_app/screens/login/login-password.dart';
import 'package:blog_app/screens/onboarding-screens/splash-screen.dart';
import 'package:blog_app/screens/options.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  initScreen = await pref.getInt("initScreen");
  await pref.setInt("initScreen", 1);
  //await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   "/onboarding": (context) => FirstScreen(),
      //   "/": (context) => FirstScreen(),
      // },
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: initScreen == 0 || initScreen == null
                  ? SplashScreen()
                  : LoginEmail())),
    );
  }
}
