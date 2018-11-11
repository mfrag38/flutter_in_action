import 'package:flutter/material.dart';
import 'package:weather_app/page/page_container.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var theme = ThemeData(
      fontFamily: "Cabin",
      primaryColor: Color(0xFFFAF6E8),
      accentColor: Color(0xFFEBB9B7),
      primaryTextTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColor.textColor,
            displayColor: AppColor.textColor,
          ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColor.textColor,
            displayColor: AppColor.textColor,
          ),
    );

    return MaterialApp(
      theme: theme,
      home: PageContainer(),
    );
  }
}

class AppColor extends Color {
  AppColor(int value) : super(value);

  static const yellowSun = Color(0xFFF6CC6D);
  static const periwinkleSky = Color(0xFFD0CADA);
  static const pinkSky = Color(0xFFEBB9B7);
  static const paleYellowSky = Color(0xFFFAF6E8);
  static const textColor = Color(0xFF3A3B3C);
}
