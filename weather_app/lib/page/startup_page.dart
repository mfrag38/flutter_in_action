import 'package:flutter/material.dart';
import 'package:weather_app/widget/sun_background.dart';

class StartupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Sun(),
        ],
      ),
    );
  }
}
