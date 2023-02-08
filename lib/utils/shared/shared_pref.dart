// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constance/constance.dart';

class SharedPref {
  static SharedPref instance = SharedPref._();
  final String userLoginStateKey = "userLoginState";
  final String userLanguageKey = "userLanguage";
  final String userAccountTypeKey = "userAccountType";
  final String tokenKey = "token";
  final String userDataKey = "userData";
  final String fcmToken = "fcmTokenKey";

  SharedPref._();

  static SharedPreferences? _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? getUserToken() {
    return _prefs?.getString(tokenKey);
  }

  setUserLanguage({required String newLanguage}) {
    try {
      _prefs?.setString(userLanguageKey, newLanguage);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  String getUserLanguage() {
    return _prefs?.getString(userLanguageKey) ?? Constance.english;
  }

  // Customer getUserData() {
  //   try {
  //     String userString = _prefs?.getString(userDataKey) ?? "";
  //     return Customer.fromJson(json.decode(userString));
  //   } catch (e) {
  //     return Customer();
  //   }
  // }

  // setFCMToken(String string) {
  //   try {
  //     _prefs?.setString(fcmToken, string).then((value) => {
  //           Logger().e("setFCMToken : $value"),
  //         });
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  // getFCMToken() {
  //   return _prefs?.getString(fcmToken) ?? "";
  // }

}
