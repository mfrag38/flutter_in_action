//import 'package:built_collection/built_collection.dart';
//import 'package:built_value/built_value.dart';
//import 'package:built_value/serializer.dart';
//
//part 'weather.g.dart';
//
//abstract class Forecast implements Built<Forecast, ForecastBuilder> {
//  BuiltList<ForecastDay> get days;
//  Forecast._();
//
//  factory Forecast([updates(ForecastBuilder b)]) = _$Forecast;
//  static Serializer<Forecast> get serializer => _$forecastSerializer;
//}
//
//abstract class ForecastDay implements Built<ForecastDay, ForecastDayBuilder> {
//  BuiltList<Weather> get hourlyWeather;
//  int get min;
//  int get max;
//
//  ForecastDay._();
//
//  factory ForecastDay([updates(ForecastDayBuilder b)]) = _$ForecastDay;
//  static Serializer<ForecastDay> get serializer => _$forecastDaySerializer;
//}
//
//abstract class Weather implements Built<Weather, WeatherBuilder> {
//  String get city;
//  DateTime get dateTime;
//  @nullable
//  Temperature get temperature;
//  String get description;
//  int get cloudCoveragePercentage;
//  String get weatherIcon;
//
//  Weather._();
//
//  factory Weather([updates(WeatherBuilder b)]) = _$Weather;
//  static Serializer<Weather> get serializer => _$weatherSerializer;
//}
//
//abstract class Temperature implements Built<Temperature, TemperatureBuilder> {
//  int get current;
//  TemperatureUnit get temperatureUnit;
//
//  Temperature._();
//
//  factory Temperature([updates(TemperatureBuilder b)]) = _$Temperature;
//  static Serializer<Temperature> get serializer => _$temperatureSerializer;
//}
//
//class TemperatureUnit extends EnumClass {
//  static Serializer<TemperatureUnit> get serializer =>
//      _$temperatureUnitSerializer;
//
//  static const TemperatureUnit kelvin = _$kelvin;
//  static const TemperatureUnit celsius = _$celsius;
//  static const TemperatureUnit fahrenheit = _$fahrenheit;
//
//  const TemperatureUnit._(String name) : super(name);
//
//  static BuiltSet<TemperatureUnit> get values => _$values;
//  static TemperatureUnit valueOf(String name) => _$valueOf(name);
//}
//
//enum WeatherDescription {
//  clear,
//  cloudy,
//  sunny,
//  rain,
//  snow,
//}
