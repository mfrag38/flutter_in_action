import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start/utils/forecast_animation_utils.dart';

class ForecastTableView extends StatelessWidget {
  final AppSettings settings;
  final Forecast forecast;

  ForecastTableView({
    this.forecast,
    this.settings,
  });

  IconData _getWeatherIcon(Weather weather) {
    return weatherIcons[weather.description];
  }

  int _temperature(int temp) {
    if (settings.selectedTemperature == TemperatureUnit.fahrenheit) {
      return Temperature.celsiusToFahrenheit(temp);
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.body1;
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 48.0,
      ),
      child: Table(
        // TODO: Implement Table
        children: [],
      ),
    );
  }
}
