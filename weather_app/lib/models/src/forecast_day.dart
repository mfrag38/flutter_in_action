import 'package:weather_app/models/src/current_forecast.dart';
import 'package:weather_app/models/src/temperature.dart';
import 'dart:math' as math;

class ForecastDay {
  List<Forecast> hourlyForecast;
  Temperature min;
  Temperature max;

  ForecastDay();

  factory ForecastDay.fromList(List<Forecast> forecastHours) {
    int runningMin = double.negativeInfinity.round();
    int runningMax = double.infinity.round();

    var day = new ForecastDay()
      ..hourlyForecast = forecastHours.map((Forecast forecastHour) {
        runningMin = math.min(runningMin, forecastHour.temperature.current);
        runningMax = math.max(runningMax, forecastHour.temperature.current);
        return forecastHour;
      })
      ..max = new Temperature(runningMax)
      ..min = new Temperature(runningMin);
    return day;
  }

  @override
  String toString() {
    return 'ForecastDay{hourlyForecast: ${hourlyForecast.toString()}, min: $min, max: $max}';
  }


}
