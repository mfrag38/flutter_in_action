import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';

class Sun extends StatelessWidget {
  Sun();

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var margin = (maxWidth * .3) / 2;

    return new AspectRatio(
      aspectRatio: 1.0,
      child: new Container(
        margin: EdgeInsets.symmetric(horizontal: margin),
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.yellowSun,
        ),
      ),
    );
  }
}
