import 'dart:math' as math;

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

  Forecast({
    this.city,
    this.dateTime,
    this.temperature,
    this.description,
    this.cloudCoveragePercentage,
  });

  static getIconForWeatherDescription(WeatherDescription description) {
    switch (description) {
      case WeatherDescription.clear:
      case WeatherDescription.cloudy:
      case WeatherDescription.rain:
      case WeatherDescription.snow:
      case WeatherDescription.sunny:
        return "Icon name";
    }
  }

  @override
  String toString() {
    return 'Forecast{city: $city, dateTime: ${dateTime.toString()}, temperature: ${temperature.toString()}, description: $description, cloudCoveragePercentage: $cloudCoveragePercentage}';
  }
}

class ForecastDay {
  List<Forecast> hourlyForecast;
  Temperature min;
  Temperature max;

  ForecastDay();

  factory ForecastDay.fromList(List<Forecast> forecastHours) {
    int runningMin = 555;
    int runningMax = -555;

    var day = new ForecastDay()
      ..hourlyForecast = forecastHours.map((Forecast forecastHour) {
        runningMin = math.min(runningMin, forecastHour.temperature.current);
        runningMax = math.max(runningMax, forecastHour.temperature.current);
        return forecastHour;
      }).toList()
      ..max = new Temperature(runningMax)
      ..min = new Temperature(runningMin);
    return day;
  }

  @override
  String toString() {
    return 'ForecastDay{hourlyForecast: ${hourlyForecast.toString()}, min: $min, max: $max}';
  }
}

class Temperature {
  final int current;
  final TemperatureUnit unit;

  Temperature(this.current, {this.unit = TemperatureUnit.celsius});

  @override
  String toString() {
    return 'Temperature{current: $current, unit: $unit}';
  }
}

enum TemperatureUnit { celsius, fahrenheit, kelvin }
