import 'package:flutter/material.dart';
import 'package:weather_app_start_chapter_6/styles.dart';


// TODO: Make Animated
class Sun extends StatelessWidget {
  Sun({Key key}) : super(key: key);

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
          color: AppColor.noonSun,
        ),
      ),
    );
  }
}
