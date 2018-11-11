import 'dart:math' as math;
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:weather_app/models/models.dart';

DateTime startDateTime = new DateTime(2018, 11, 08, 0, 0);
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
    var tempBuilder = new TemperatureBuilder()
      ..current = temp
      ..temperatureUnit = TemperatureUnit.celsius;
    forecasts.add(new Weather((b) => b
      ..city = city
      ..dateTime = startDateTime
      ..description = randomDescription.toString()
      ..cloudCoveragePercentage = generateCloudCoverageNum(randomDescription)
      ..temperature = tempBuilder));

    runningMin = math.min(runningMin, temp);
    runningMax = math.max(runningMax, temp);
  }

  return new ForecastDay((b) => b
    ..hourlyWeather = forecasts
    ..min = runningMin
    ..max = runningMax);
}

List<ForecastDay> generateTenDayForecast() {
  var dailyForecast =
      List.generate(10, (int index) => dailyForecastGenerator(2, 10));
  new File('data.txt').writeAsString(dailyForecast.toString());
  return dailyForecast;
}
