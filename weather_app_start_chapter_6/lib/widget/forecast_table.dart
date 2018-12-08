import 'package:flutter/material.dart';
import 'package:shared_lib/date_utils.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start_chapter_6/utils/forecast_animation_utils.dart'
    as utils;

// TODO: Make Animated
class ForecastTableView extends StatelessWidget {
  final AppSettings settings;
  final Forecast forecast;

  ForecastTableView({
    this.forecast,
    this.settings,
  });

  IconData _getWeatherIcon(Weather weather) {
    return utils.weatherIcons[weather.description];
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
        columnWidths: {
          0: FixedColumnWidth(100.0),
          2: FixedColumnWidth(20.0),
          3: FixedColumnWidth(20.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: List.generate(7, (int index) {
          ForecastDay day = forecast.days[index];
          Weather dailyWeather = forecast.days[index].hourlyWeather[0];
          var weatherIcon = _getWeatherIcon(dailyWeather);
          return TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    DateUtils.weekdays[dailyWeather.dateTime.weekday],
                    style: textStyle,
                  ),
                ),
              ),
              TableCell(
                child: Icon(
                  weatherIcon,
                  size: 16.0,
                ),
              ),
              TableCell(
                child: Text(
                  _temperature(day.max).toString(),
                  style: textStyle,
                ),
              ),
              TableCell(
                child: Text(
                  _temperature(day.min).toString(),
                  style: textStyle,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
