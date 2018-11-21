import 'package:weather_app/models/models.dart';

List<String> allCities = [
  "Portland",
  "Berlin",
  "Buenos Aires",
  "Chaing Mai",
  "Eugene",
  "Georgetown",
  "London",
  "New York",
  "Panama City",
  "San Francisco",
  "Tokyo",
  "Tuscon",
];

class AppSettings {
  TemperatureUnit selectedTemperature = TemperatureUnit.celsius;
  Map<String, bool> selectedCities = {};
  String selectedCity = allCities[0];

  AppSettings() {
    allCities.forEach(
        (String city) => selectedCities.putIfAbsent(city, () => false));
    selectedCities["Portland"] = true;
    selectedCities["London"] = true;
  }

  static Map<TemperatureUnit, String> temperatureLabels = {
    TemperatureUnit.celsius: "°C",
    TemperatureUnit.fahrenheit: "°F",
  };
}
