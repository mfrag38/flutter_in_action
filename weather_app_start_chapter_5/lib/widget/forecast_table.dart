import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start_chapter_5/utils/forecast_animation_utils.dart';

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

/// These are the table rows that
/// should be inserted into the build method
/// _after_ you've written the configuration for the `table` itself
///
/// This includes:
///
/// Table.columnWidths,
/// Table.defaultVerticalAlignment
/// Table.children
///
/// These will be inserted into the Table.children.TableRow.children List<Widget>
///
/// TableCell(
///   child: Padding(
///     padding: const EdgeInsets.all(4.0),
///     child: Text(
///       DateUtils.weekdays[dailyWeather.dateTime.weekday],
///       style: textStyle,
///     ),
///   ),
/// ),
/// TableCell(
///   child: Icon(
///     weatherIcon,
///     size: 16.0,
///   ),
/// ),
/// TableCell(
///   child: Text(
///     _temperature(day.max).toString(),
///     style: textStyle,
///   ),
/// ),
/// TableCell(
///   child: Text(
///     _temperature(day.min).toString(),
///     style: textStyle,
///   ),
/// ),
