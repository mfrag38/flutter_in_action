import 'package:flutter/material.dart';
import 'package:weather_app/models/src/temperature.dart';

enum WeatherDescription {
  clear,
  cloudy,
  sunny,
  rain,
  snow,
}

class Forecast {
  final String city;
  final DateTime dateTime;
  final Temperature temperature;
  final WeatherDescription description;
  final int cloudCoveragePercentage;
  Icon weatherIcon;

  Forecast({
    this.city,
    this.dateTime,
    this.temperature,
    this.description,
    this.cloudCoveragePercentage,
  });

//  factory Forecast.fromMap(Map<String, dynamic> map) {
//    var forecast = new Forecast(
//      map['city'],
//      new DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
//      new Temperature(map['temperature']),
//      map['weatherDescription'],
//      map['cloudCoverage'],
//    );
//
//    forecast.weatherIcon = Forecast.getIconForWeatherDescription(forecast.description);
//
//    return forecast;
//  }

  static getIconForWeatherDescription(WeatherDescription description) {
    switch (description) {
      case WeatherDescription.clear:
      case WeatherDescription.cloudy:
      case WeatherDescription.rain:
      case WeatherDescription.snow:
      case WeatherDescription.sunny:
        return Icons.wb_sunny;
    }
  }

  @override
  String toString() {
    return 'Forecast{city: $city, dateTime: $dateTime, temperature: $temperature, description: $description, cloudCoveragePercentage: $cloudCoveragePercentage, weatherIcon: $weatherIcon}';
  }

// getter => icon
// getter => human readable day from datetime
// getter => human readable time from datetime
}
