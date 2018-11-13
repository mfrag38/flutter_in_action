import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';

List<int> hours = [3, 6, 9, 12, 15, 18, 21, 24];

class ForecastAnimationState {
  final Color backgroundColor;
  final Color sunColor;
  final Color textColor;
  final double verticalOffsetPosition;

  Offset get offsetPosition => Offset(0.0, verticalOffsetPosition);

  ForecastAnimationState({
    this.backgroundColor,
    this.sunColor,
    this.textColor,
    this.verticalOffsetPosition,
  });

  factory ForecastAnimationState.stateForNextSelection(int hour) {
    var roundedInt = (3 * (hour / 3)).round();
    assert(roundedInt % 3 == 0);
    switch (roundedInt) {
      case 0:
        return ForecastAnimationState(
          backgroundColor: AppColor.midnightSky,
          sunColor: AppColor.midnightMoon,
          textColor: AppColor.textColorLight,
          verticalOffsetPosition: -0.10,
        );
      case 3:
        return ForecastAnimationState(
            backgroundColor: AppColor.twilightSky,
            sunColor: AppColor.twilightMoon,
            textColor: AppColor.textColorLight,
            verticalOffsetPosition: 0.1);
      case 6:
        return ForecastAnimationState(
            backgroundColor: AppColor.dawnSky,
            sunColor: AppColor.dawnSun,
            textColor: AppColor.textColorDark,
            verticalOffsetPosition: 0.25);
      case 9:
        return ForecastAnimationState(
            backgroundColor: AppColor.dawnSky,
            sunColor: AppColor.dawnSun,
            textColor: AppColor.textColorDark,
            verticalOffsetPosition: 0.1);
      case 12:
        return ForecastAnimationState(
            backgroundColor: AppColor.noonSky,
            sunColor: AppColor.noonSun,
            textColor: AppColor.textColorDark,
            verticalOffsetPosition: -0.1);
      case 15:
        return ForecastAnimationState(
            backgroundColor: AppColor.noonSky,
            sunColor: AppColor.noonSun,
            textColor: AppColor.textColorDark,
            verticalOffsetPosition: 0.1);
      case 18:
        return ForecastAnimationState(
            backgroundColor: AppColor.dawnSun,
            sunColor: AppColor.duskSky,
            textColor: AppColor.textColorDark,
            verticalOffsetPosition: 0.5);
      case 21:
      default:
        return ForecastAnimationState(
            backgroundColor: AppColor.nightSky,
            sunColor: AppColor.nightMoon,
            textColor: AppColor.textColorLight,
            verticalOffsetPosition: 0.1);
    }
  }
}

class ForecastThemeAnimationTween {
  final ForecastAnimationState begin;
  final ForecastAnimationState end;

  ForecastThemeAnimationTween({this.begin, this.end});
}

class ColorTuple {
  final Color a;
  final Color b;

  const ColorTuple(this.a, this.b);
}
