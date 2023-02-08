import 'package:flutter/material.dart';

class ColorManger {
  ColorManger._();
  static ColorManger instance = ColorManger._();

  final Color primaryColor = const Color(0xFF000000);
  final Color primaryDarkColor = const Color(0xFF3A3A3C);
  final Color blackDarkColor = const Color(0xFF3A3A3C);
  final Color seconderyColor = const Color(0xFF47BFB5);
  final Color primaryHighlightColor = const Color(0xFF68E8DD);
  final Color textColor = const Color(0xFF1D3F79);
  final Color transColor = const Color(0x00000000);
  final Color unSelectedWidget = const Color(0xFF8F92A1);
  final Color iconDrawer = const Color(0xFF979797);
  final Color borderColorDivider = const Color(0xFFBEBEBE);
  final Color hintColor = const Color(0xFFF2F2F2);
  final Color unSelectedButton = const Color(0xFFF1F1F1);
  final Color backgroundColor = const Color(0xFFFFFFFF);
  final Color backgroundDarkColor = const Color(0xFFECECEC);
  final Color successColor = const Color(0xFF00C851);
  final Color errorColor = const Color(0xFFff4444);
  final Color infoColor = const Color(0xFF33b5e5);
  final Color blackColor = const Color(0xFF000000);
  final Color borderColor = const Color(0xFF707070).withOpacity(0.8);
  final Color spacerdColor = const Color(0xFFE8E8E8);

  final List<Color> homeGradient = [
    const Color(0xFF06447b),
    const Color(0xFF245F9C),
    const Color(0xFF11467C),
    const Color(0xFF156CC6)
  ];
}
