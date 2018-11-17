import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/styles.dart';

// The weather data is shown in 3 hour intervals from 3:00am to Midnight
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

Map<WeatherDescription, IconData> weatherIcons = {
  WeatherDescription.sunny: Icons.wb_sunny,
  WeatherDescription.cloudy: Icons.wb_cloudy,
  WeatherDescription.clear: Icons.brightness_2,
  WeatherDescription.rain: Icons.beach_access,
  WeatherDescription.snow: Icons.ac_unit,
};

double appBarHeight(BuildContext context) {
  return screenAwareSize(40.0, context) + MediaQuery.of(context).padding.top;
}

const double baseHeight = 950.0;
double screenAwareSize(double size, BuildContext context) {
  double drawingHeight =
      MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
  return size * drawingHeight / baseHeight;
}
