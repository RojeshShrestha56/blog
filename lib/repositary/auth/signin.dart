import 'dart:developer';

import 'package:blog_app/constants/index.dart';
import 'package:blog_app/service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../modal/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

// final String API_URL= dotenv.env['BACKEND_URL'];
// String API_URL = dotenv.get('BACKEND_URL');

class SigninRepo {
  Config config = Config();
  Future<User> signinUser(String email, String password) async {
    Dio client = await getDioInstance();

    final uri = Uri.parse("$API_URL/app/auth/signin");
    try {
      // final response = await http.Client().post(uri, body: {"email", password});
      final response = await client.post("$API_URL/app/auth/signin",
          data: {'email': email, 'password': password});
      if (response.statusCode != 200) {
        Fluttertoast.showToast(
            msg: "Failed to signup",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
      return User.fromJson(response.data);
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Failed to signup",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      throw Exception();
    }
  }
}
