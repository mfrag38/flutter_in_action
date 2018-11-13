import 'dart:math' as math;

import 'package:built_collection/built_collection.dart';
import 'package:weather_app/models/models.dart';

DateTime _today = new DateTime.now();
DateTime startDateTime = new DateTime(_today.year, _today.month, _today.day, 0);
DateTime dailyDate = _today;
String city = "Portland";

int generateCloudCoverageNum(WeatherDescription description) {
  switch (description) {
    case WeatherDescription.clear:
    case WeatherDescription.cloudy:
    case WeatherDescription.rain:
    case WeatherDescription.snow:
    case WeatherDescription.sunny:
    default:
      return 5;
  }
}

ForecastDay dailyForecastGenerator(int low, int high) {
  var _random = new math.Random();
  List<WeatherDescription> descriptions = WeatherDescription.values;
  ListBuilder<Weather> forecasts = ListBuilder();
  int runningMin = 555;
  int runningMax = -555;

  for (var i = 0; i < 8; i++) {
    startDateTime = startDateTime.add(new Duration(hours: 3));
    int temp = _random.nextInt(high);
    WeatherDescription randomDescription =
        descriptions[_random.nextInt(descriptions.length - 1)];
    var tempBuilder = TemperatureBuilder()
      ..current = temp
      ..temperatureUnit = TemperatureUnit.celsius;
    forecasts.add(Weather((b) => b
      ..city = city
      ..dateTime = startDateTime
      ..description = randomDescription.toString()
      ..cloudCoveragePercentage = generateCloudCoverageNum(randomDescription)
      ..temperature = tempBuilder));

    runningMin = math.min(runningMin, temp);
    runningMax = math.max(runningMax, temp);
  }

  var forecastDay = ForecastDay((b) => b
    ..hourlyWeather = forecasts
    ..min = runningMin
    ..max = runningMax
    ..date = dailyDate);

  dailyDate.add(Duration(days: 1));

  return forecastDay;
}

Forecast generateTenDayForecast() {
  ListBuilder<ForecastDay> tenDayForecast = ListBuilder();

  List.generate(10, (int index) {
    tenDayForecast.add(dailyForecastGenerator(2, 10));
  });

  return new Forecast((b) => b..days = tenDayForecast);
}
