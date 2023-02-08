
import 'package:flutter/material.dart';
import 'package:test0/feature/core/theme/text_theme/text_manger.dart';
class AppTextTheme {
  static AppTextTheme instance = AppTextTheme._();
  AppTextTheme._();

  TextTheme get textAppTheme => TextTheme(
        displayLarge: TextManger.instance.textStyleh1,
        displayMedium: TextManger.instance.textStyleh2,
        displaySmall: TextManger.instance.textStyleh3,
        headlineMedium: TextManger.instance.textStyleh4,
        headlineSmall: TextManger.instance.textStyleh5,
        titleLarge: TextManger.instance.textStyleh6,
      );
}
