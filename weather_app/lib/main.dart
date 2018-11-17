import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/page/forecast_page.dart';
import 'package:weather_app/styles.dart';

void main() {
  // Don't allow landscape mode
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new MyApp()));
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
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
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: ForecastPage(),
    );
  }
}
