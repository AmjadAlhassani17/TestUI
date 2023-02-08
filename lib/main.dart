import 'package:flutter/material.dart';
import 'package:test0/utils/shared/shared_pref.dart';
import 'feature/core/app_widget.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.instance.init();
  runApp(const AppWidget());
}