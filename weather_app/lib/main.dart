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
            bodyColor: AppColor.textColorDark,
            displayColor: AppColor.textColorDark,
          ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColor.textColorDark,
            displayColor: AppColor.textColorDark,
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

  static const dawnSky = Color(0xFFE5DAD6);
  static const dawnSun = Color(0xFFDEA996);
  static const noonSky = Color(0xFFFAF6E8);
  static const noonSun = Color(0xFFF6CC6D);
  static const duskSky = Color(0xFFD0CADA);
  static const duskSun = Color(0xFFEBB9B7);

  static const nightSky = Color(0xFF3F3E44);
  static const nightMoon = Color(0xFF555555);
  static const midnightSky = Color(0xFF262A30);
  static const midnightMoon = Color(0xFF43454B);
  static const twilightSky = Color(0xFF353C3F);
  static const twilightMoon = Color(0xFF5D5555);

  static const textColorDark = Color(0xFF3A3B3C);
  static const textColorLight = Color(0xFFAEAEAE);
}
