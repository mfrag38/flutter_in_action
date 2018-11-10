class ForecastDay {
  List<Forecast> hourlyForecast;
  Temperature min;
  Temperature max;
}

class Forecast {
  final String city;
  final DateTime dateTime;
  final Temperature temperature;
  final WeatherDescription description;
  final int cloudCoveragePercentage;

  Forecast(
    this.dateTime,
    this.temperature,
    this.description,
    this.cloudCoveragePercentage,
    this.city,
  );

  // getter => icon
  // getter => human readable day from datetime
  // getter => human readable time from datetime
}

class Temperature {
  final double current;
  final TemperatureUnit unit;

  Temperature(this.current, {this.unit = TemperatureUnit.celsius});
}

enum TemperatureUnit { celsius, fahrenheit, kelvin }

enum WeatherDescription {
  clear,
  cloudy,
  sunny,
  rain,
  snow,
}
