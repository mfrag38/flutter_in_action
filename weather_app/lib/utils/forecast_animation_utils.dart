import 'package:flutter/material.dart';
import 'package:shared_lib/src/weather_app_models.dart';

/// This _isn't_ in shared because these methods will be
/// discussed in the manuscript
List<int> hours = [3, 6, 9, 12, 15, 18, 21, 24];

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

Map<TemperatureUnit, String> temperatureLabels = {
  TemperatureUnit.celsius: "°C",
  TemperatureUnit.fahrenheit: "°F",
};