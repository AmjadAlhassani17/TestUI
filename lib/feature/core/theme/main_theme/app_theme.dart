import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../color/color_manger.dart';
import '../input_theme/app_text_field_theme.dart';
import '../text_theme/app_text_theme.dart';
import '../text_theme/text_manger.dart';

class AppTheme {
  static AppTheme instance = AppTheme._();
  AppTheme._();

  ThemeData get materialLightTheme {
    return ThemeData(
      primaryColor: ColorManger.instance.primaryColor,
      fontFamily: 'Tajawal',
      secondaryHeaderColor: ColorManger.instance.seconderyColor,
      scaffoldBackgroundColor: ColorManger.instance.backgroundColor,
      textTheme: AppTextTheme.instance.textAppTheme,
      highlightColor: ColorManger.instance.transColor,
      splashColor: ColorManger.instance.transColor,
      // ignore: deprecated_member_use
      errorColor: ColorManger.instance.errorColor,
      inputDecorationTheme: AppTextFieldTheme.instance.inputDecorationTheme,
      tabBarTheme: const TabBarTheme(),
      toggleButtonsTheme: ToggleButtonsThemeData(
        selectedColor: ColorManger.instance.primaryColor,
        selectedBorderColor: ColorManger.instance.primaryColor,
        borderColor: ColorManger.instance.primaryColor,
        fillColor: ColorManger.instance.primaryColor,
        splashColor: ColorManger.instance.primaryColor.withOpacity(0.12),
        hoverColor: ColorManger.instance.primaryColor.withOpacity(0.04),
        borderRadius: BorderRadius.circular(8.0),
        constraints: const BoxConstraints(minHeight: 36.0),
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextManger.instance.textStyleWhiteColorh4,
          backgroundColor: ColorManger.instance.primaryColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManger.instance.transColor,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: ColorManger.instance.primaryColor,
          )),
    );
  }
}
