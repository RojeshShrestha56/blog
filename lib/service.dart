import 'dart:io';

import 'package:blog_app/constants/index.dart';
import 'package:blog_app/screens/options.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

Future<Dio> getDioInstance({bool requireAccessToken = true}) async {
  String accessToken = "";

  // final apiEndPoint = await

  Dio client;

  Dio tokenDio = Dio(BaseOptions(
      connectTimeout: 30000,
      baseUrl: Config.API_URL,
      responseType: ResponseType.json,
      contentType: ContentType.json.toString()));

  if (!requireAccessToken) {
    return Dio(BaseOptions(
      connectTimeout: 30000,
      baseUrl: Config.API_URL,
      responseType: ResponseType.json,
      contentType: ContentType.json.toString(),
    ));
  }

  client = Dio(BaseOptions(
    connectTimeout: 20000,
    headers: {"Authorization": "Bearer $accessToken"},
    baseUrl: Config.API_URL,
    responseType: ResponseType.json,
    contentType: ContentType.json.toString(),
  ))
    ..interceptors.addAll([
      InterceptorsWrapper(onError: (DioError error, _) async {
        if (error.response?.statusCode == 401) {
          // Tools.showErrorToast('Session Exipred! Please Login Again.');
          print("Error");
          // SharedPreferences preferences = await SharedPreferences.getInstance();
          // FlutterSecureStorage secureStorage = FlutterSecureStorage();
          // await preferences.remove(StringContants.USER_DATA_KEY);
          // await secureStorage.delete(key: StringContants.ACCESS_TOKEN_KEY);
          // Tools.showLoadingModal(message: "Logging out..");
          // await Future.delayed(Duration(seconds: 2));
          // Tools.dismissLoadingModal();
          Get.offAll(OptionScreen());
        }
      })
    ]);
  return client;
}
