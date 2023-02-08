
import 'package:flutter/material.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test0/feature/core/theme/color/color_manger.dart';
import 'package:test0/feature/core/theme/main_theme/app_theme.dart';
import '../../utils/localization/localization_service.dart';
import '../../utils/shared/shared_pref.dart';
import '../../utils/util/utils.dart';
import '../view/screens/home/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Utils.instance.changeStatusBar(
      statusBarColor: ColorManger.instance.transColor,
      systemNavigationBarColor: ColorManger.instance.primaryColor,
    );
    return ScreenUtilInit(
      builder: (context , child) => GetMaterialApp(
        enableLog: true,
        title: "AppTest",
        debugShowCheckedModeBanner: false,
        locale: Locale(SharedPref.instance.getUserLanguage()),
        fallbackLocale: LocalizationService.fallbackLocale,
        themeMode: ThemeMode.system,
        home: HomeScreen(),
        translations: LocalizationService(),
        theme: AppTheme.instance.materialLightTheme,
        smartManagement: SmartManagement.onlyBuilder,
      ),
      designSize: const Size(411.42857142857144, 820.5714285714286),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
