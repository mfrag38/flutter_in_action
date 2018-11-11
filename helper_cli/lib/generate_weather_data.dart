//import 'dart:math';
//import 'dart:io';
//import 'package:helper_cli/models/weather_models.dart';
//
//DateTime startDateTime = new DateTime(2018, 11, 08, 0, 0);
//String city = "Portland";
//
//int generateCloudCoverageNum(WeatherDescription description) {
//  switch (description) {
//    case WeatherDescription.clear:
//    case WeatherDescription.cloudy:
//    case WeatherDescription.rain:
//    case WeatherDescription.snow:
//    case WeatherDescription.sunny:
//    default:
//      return 5;
//  }
//}
//
//ForecastDay dailyForecastGenerator(int low, int high) {
//  var _random = new Random();
//  List<WeatherDescription> descriptions = WeatherDescription.values;
//  var forecasts = List.generate(8, (int index) {
//    startDateTime = startDateTime.add(new Duration(hours: 3));
//    int temp = _random.nextInt(high);
//    WeatherDescription randomDescription =
//        descriptions[_random.nextInt(descriptions.length - 1)];
//    return Forecast(
//      city: city,
//      dateTime: startDateTime,
//      temperature: new Temperature(temp),
//      description: randomDescription,
//      cloudCoveragePercentage: generateCloudCoverageNum(randomDescription),
//    );
//  });
//
//  return ForecastDay.fromList(forecasts);
//}
//
//List<ForecastDay> generateTenDayForecast() {
//  var dailyForecast =
//      List.generate(10, (int index) => dailyForecastGenerator(2, 10));
//  var dataFile = new File('weather_data.txt');
//  var sink = dataFile.openWrite();
//  dailyForecast.forEach((day) {
//    sink.write('---- \n');
//    sink.write('${day.toString()} \n');
//  });
//  sink.close();
//  return dailyForecast;
//}
