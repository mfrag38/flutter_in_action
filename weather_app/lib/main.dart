import 'package:flutter/material.dart';
import 'package:weather_app/page/startup_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: StartupPage(),
    );
  }
}

ThemeData get theme {
  return ThemeData(
    fontFamily: 'Rubik',
    primaryColor: Color(0xFFFAF6E8),
    accentColor: Color(0xFFEBB9B7),
  );
}

class AppColor extends Color {
  AppColor(int value) : super(value);

  static const yellowSun = Color(0xFFF6CC6D);
}
