import 'dart:math' as math;

import 'package:built_collection/built_collection.dart';
import 'package:shared_lib/src/weather_app_models.dart';

DateTime _today = new DateTime.now();
DateTime startDateTime = new DateTime(_today.year, _today.month, _today.day, 0);
DateTime dailyDate = _today;
var _random = new math.Random();
List<String> cities = ["Portland", "London", "Berlin", "Chaing Mai"];

int generateCloudCoverageNum(WeatherDescription description) {
  switch (description) {
    case WeatherDescription.cloudy:
      return 75;
    case WeatherDescription.rain:
    case WeatherDescription.snow:
      return 45;
    case WeatherDescription.clear:
    case WeatherDescription.sunny:
    default:
      return 5;
  }
}

WeatherDescription generateTimeAwareWeatherDescription(DateTime time) {
  var hour = time.hour;

  var descriptions = WeatherDescription.values;
  var description = descriptions[_random.nextInt(descriptions.length - 1)];
  if (hour < 6 || hour > 18) {
    if (description == WeatherDescription.sunny) {
      description = WeatherDescription.clear;
    }
  } else {
    if (description == WeatherDescription.clear) {
      description = WeatherDescription.sunny;
    }
  }
  return description;
}

ForecastDay dailyForecastGenerator(String city, int low, int high) {
  ListBuilder<Weather> forecasts = ListBuilder();
  int runningMin = 555;
  int runningMax = -555;

  for (var i = 0; i < 8; i++) {
    startDateTime = startDateTime.add(new Duration(hours: 3));
    int temp = _random.nextInt(high);
    WeatherDescription randomDescription =
        generateTimeAwareWeatherDescription(startDateTime);
    var tempBuilder = TemperatureBuilder()
      ..current = temp
      ..temperatureUnit = TemperatureUnit.celsius;
    forecasts.add(Weather((b) => b
      ..city = city
      ..dateTime = startDateTime
      ..description = randomDescription
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

Forecast generateTenDayForecast(String city) {
  ListBuilder<ForecastDay> tenDayForecast = ListBuilder();

  List.generate(10, (int index) {
    tenDayForecast.add(dailyForecastGenerator(city, 2, 10));
  });

  return new Forecast((b) => b..days = tenDayForecast);
}
