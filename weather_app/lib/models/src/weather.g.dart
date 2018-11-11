// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

const TemperatureUnit _$kelvin = const TemperatureUnit._('kelvin');
const TemperatureUnit _$celsius = const TemperatureUnit._('celsius');
const TemperatureUnit _$fahrenheit = const TemperatureUnit._('fahrenheit');

TemperatureUnit _$valueOf(String name) {
  switch (name) {
    case 'kelvin':
      return _$kelvin;
    case 'celsius':
      return _$celsius;
    case 'fahrenheit':
      return _$fahrenheit;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TemperatureUnit> _$values =
    new BuiltSet<TemperatureUnit>(const <TemperatureUnit>[
  _$kelvin,
  _$celsius,
  _$fahrenheit,
]);

Serializer<Forecast> _$forecastSerializer = new _$ForecastSerializer();
Serializer<ForecastDay> _$forecastDaySerializer = new _$ForecastDaySerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<Temperature> _$temperatureSerializer = new _$TemperatureSerializer();
Serializer<TemperatureUnit> _$temperatureUnitSerializer =
    new _$TemperatureUnitSerializer();

class _$ForecastSerializer implements StructuredSerializer<Forecast> {
  @override
  final Iterable<Type> types = const [Forecast, _$Forecast];
  @override
  final String wireName = 'Forecast';

  @override
  Iterable serialize(Serializers serializers, Forecast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'days',
      serializers.serialize(object.days,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ForecastDay)])),
    ];

    return result;
  }

  @override
  Forecast deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'days':
          result.days.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ForecastDay)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastDaySerializer implements StructuredSerializer<ForecastDay> {
  @override
  final Iterable<Type> types = const [ForecastDay, _$ForecastDay];
  @override
  final String wireName = 'ForecastDay';

  @override
  Iterable serialize(Serializers serializers, ForecastDay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'hourlyWeather',
      serializers.serialize(object.hourlyWeather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
      'min',
      serializers.serialize(object.min, specifiedType: const FullType(int)),
      'max',
      serializers.serialize(object.max, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ForecastDay deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastDayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hourlyWeather':
          result.hourlyWeather.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Weather)])) as BuiltList);
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'dateTime',
      serializers.serialize(object.dateTime,
          specifiedType: const FullType(DateTime)),
      'temperature',
      serializers.serialize(object.temperature,
          specifiedType: const FullType(Temperature)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'cloudCoveragePercentage',
      serializers.serialize(object.cloudCoveragePercentage,
          specifiedType: const FullType(int)),
      'weatherIcon',
      serializers.serialize(object.weatherIcon,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'temperature':
          result.temperature.replace(serializers.deserialize(value,
              specifiedType: const FullType(Temperature)) as Temperature);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cloudCoveragePercentage':
          result.cloudCoveragePercentage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weatherIcon':
          result.weatherIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TemperatureSerializer implements StructuredSerializer<Temperature> {
  @override
  final Iterable<Type> types = const [Temperature, _$Temperature];
  @override
  final String wireName = 'Temperature';

  @override
  Iterable serialize(Serializers serializers, Temperature object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'current',
      serializers.serialize(object.current, specifiedType: const FullType(int)),
      'temperatureUnit',
      serializers.serialize(object.temperatureUnit,
          specifiedType: const FullType(TemperatureUnit)),
    ];

    return result;
  }

  @override
  Temperature deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TemperatureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'current':
          result.current = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'temperatureUnit':
          result.temperatureUnit = serializers.deserialize(value,
                  specifiedType: const FullType(TemperatureUnit))
              as TemperatureUnit;
          break;
      }
    }

    return result.build();
  }
}

class _$TemperatureUnitSerializer
    implements PrimitiveSerializer<TemperatureUnit> {
  @override
  final Iterable<Type> types = const <Type>[TemperatureUnit];
  @override
  final String wireName = 'TemperatureUnit';

  @override
  Object serialize(Serializers serializers, TemperatureUnit object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  TemperatureUnit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TemperatureUnit.valueOf(serialized as String);
}

class _$Forecast extends Forecast {
  @override
  final BuiltList<ForecastDay> days;

  factory _$Forecast([void updates(ForecastBuilder b)]) =>
      (new ForecastBuilder()..update(updates)).build();

  _$Forecast._({this.days}) : super._() {
    if (days == null) {
      throw new BuiltValueNullFieldError('Forecast', 'days');
    }
  }

  @override
  Forecast rebuild(void updates(ForecastBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastBuilder toBuilder() => new ForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecast && days == other.days;
  }

  @override
  int get hashCode {
    return $jf($jc(0, days.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Forecast')..add('days', days))
        .toString();
  }
}

class ForecastBuilder implements Builder<Forecast, ForecastBuilder> {
  _$Forecast _$v;

  ListBuilder<ForecastDay> _days;
  ListBuilder<ForecastDay> get days =>
      _$this._days ??= new ListBuilder<ForecastDay>();
  set days(ListBuilder<ForecastDay> days) => _$this._days = days;

  ForecastBuilder();

  ForecastBuilder get _$this {
    if (_$v != null) {
      _days = _$v.days?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecast other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Forecast;
  }

  @override
  void update(void updates(ForecastBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Forecast build() {
    _$Forecast _$result;
    try {
      _$result = _$v ?? new _$Forecast._(days: days.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'days';
        days.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Forecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ForecastDay extends ForecastDay {
  @override
  final BuiltList<Weather> hourlyWeather;
  @override
  final int min;
  @override
  final int max;

  factory _$ForecastDay([void updates(ForecastDayBuilder b)]) =>
      (new ForecastDayBuilder()..update(updates)).build();

  _$ForecastDay._({this.hourlyWeather, this.min, this.max}) : super._() {
    if (hourlyWeather == null) {
      throw new BuiltValueNullFieldError('ForecastDay', 'hourlyWeather');
    }
    if (min == null) {
      throw new BuiltValueNullFieldError('ForecastDay', 'min');
    }
    if (max == null) {
      throw new BuiltValueNullFieldError('ForecastDay', 'max');
    }
  }

  @override
  ForecastDay rebuild(void updates(ForecastDayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastDayBuilder toBuilder() => new ForecastDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastDay &&
        hourlyWeather == other.hourlyWeather &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, hourlyWeather.hashCode), min.hashCode), max.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForecastDay')
          ..add('hourlyWeather', hourlyWeather)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class ForecastDayBuilder implements Builder<ForecastDay, ForecastDayBuilder> {
  _$ForecastDay _$v;

  ListBuilder<Weather> _hourlyWeather;
  ListBuilder<Weather> get hourlyWeather =>
      _$this._hourlyWeather ??= new ListBuilder<Weather>();
  set hourlyWeather(ListBuilder<Weather> hourlyWeather) =>
      _$this._hourlyWeather = hourlyWeather;

  int _min;
  int get min => _$this._min;
  set min(int min) => _$this._min = min;

  int _max;
  int get max => _$this._max;
  set max(int max) => _$this._max = max;

  ForecastDayBuilder();

  ForecastDayBuilder get _$this {
    if (_$v != null) {
      _hourlyWeather = _$v.hourlyWeather?.toBuilder();
      _min = _$v.min;
      _max = _$v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastDay other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ForecastDay;
  }

  @override
  void update(void updates(ForecastDayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ForecastDay build() {
    _$ForecastDay _$result;
    try {
      _$result = _$v ??
          new _$ForecastDay._(
              hourlyWeather: hourlyWeather.build(), min: min, max: max);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'hourlyWeather';
        hourlyWeather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ForecastDay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final String city;
  @override
  final DateTime dateTime;
  @override
  final Temperature temperature;
  @override
  final String description;
  @override
  final int cloudCoveragePercentage;
  @override
  final String weatherIcon;

  factory _$Weather([void updates(WeatherBuilder b)]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._(
      {this.city,
      this.dateTime,
      this.temperature,
      this.description,
      this.cloudCoveragePercentage,
      this.weatherIcon})
      : super._() {
    if (city == null) {
      throw new BuiltValueNullFieldError('Weather', 'city');
    }
    if (dateTime == null) {
      throw new BuiltValueNullFieldError('Weather', 'dateTime');
    }
    if (temperature == null) {
      throw new BuiltValueNullFieldError('Weather', 'temperature');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Weather', 'description');
    }
    if (cloudCoveragePercentage == null) {
      throw new BuiltValueNullFieldError('Weather', 'cloudCoveragePercentage');
    }
    if (weatherIcon == null) {
      throw new BuiltValueNullFieldError('Weather', 'weatherIcon');
    }
  }

  @override
  Weather rebuild(void updates(WeatherBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        city == other.city &&
        dateTime == other.dateTime &&
        temperature == other.temperature &&
        description == other.description &&
        cloudCoveragePercentage == other.cloudCoveragePercentage &&
        weatherIcon == other.weatherIcon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, city.hashCode), dateTime.hashCode),
                    temperature.hashCode),
                description.hashCode),
            cloudCoveragePercentage.hashCode),
        weatherIcon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('city', city)
          ..add('dateTime', dateTime)
          ..add('temperature', temperature)
          ..add('description', description)
          ..add('cloudCoveragePercentage', cloudCoveragePercentage)
          ..add('weatherIcon', weatherIcon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  TemperatureBuilder _temperature;
  TemperatureBuilder get temperature =>
      _$this._temperature ??= new TemperatureBuilder();
  set temperature(TemperatureBuilder temperature) =>
      _$this._temperature = temperature;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _cloudCoveragePercentage;
  int get cloudCoveragePercentage => _$this._cloudCoveragePercentage;
  set cloudCoveragePercentage(int cloudCoveragePercentage) =>
      _$this._cloudCoveragePercentage = cloudCoveragePercentage;

  String _weatherIcon;
  String get weatherIcon => _$this._weatherIcon;
  set weatherIcon(String weatherIcon) => _$this._weatherIcon = weatherIcon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    if (_$v != null) {
      _city = _$v.city;
      _dateTime = _$v.dateTime;
      _temperature = _$v.temperature?.toBuilder();
      _description = _$v.description;
      _cloudCoveragePercentage = _$v.cloudCoveragePercentage;
      _weatherIcon = _$v.weatherIcon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Weather;
  }

  @override
  void update(void updates(WeatherBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    _$Weather _$result;
    try {
      _$result = _$v ??
          new _$Weather._(
              city: city,
              dateTime: dateTime,
              temperature: temperature.build(),
              description: description,
              cloudCoveragePercentage: cloudCoveragePercentage,
              weatherIcon: weatherIcon);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'temperature';
        temperature.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Weather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Temperature extends Temperature {
  @override
  final int current;
  @override
  final TemperatureUnit temperatureUnit;

  factory _$Temperature([void updates(TemperatureBuilder b)]) =>
      (new TemperatureBuilder()..update(updates)).build();

  _$Temperature._({this.current, this.temperatureUnit}) : super._() {
    if (current == null) {
      throw new BuiltValueNullFieldError('Temperature', 'current');
    }
    if (temperatureUnit == null) {
      throw new BuiltValueNullFieldError('Temperature', 'temperatureUnit');
    }
  }

  @override
  Temperature rebuild(void updates(TemperatureBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TemperatureBuilder toBuilder() => new TemperatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Temperature &&
        current == other.current &&
        temperatureUnit == other.temperatureUnit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, current.hashCode), temperatureUnit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Temperature')
          ..add('current', current)
          ..add('temperatureUnit', temperatureUnit))
        .toString();
  }
}

class TemperatureBuilder implements Builder<Temperature, TemperatureBuilder> {
  _$Temperature _$v;

  int _current;
  int get current => _$this._current;
  set current(int current) => _$this._current = current;

  TemperatureUnit _temperatureUnit;
  TemperatureUnit get temperatureUnit => _$this._temperatureUnit;
  set temperatureUnit(TemperatureUnit temperatureUnit) =>
      _$this._temperatureUnit = temperatureUnit;

  TemperatureBuilder();

  TemperatureBuilder get _$this {
    if (_$v != null) {
      _current = _$v.current;
      _temperatureUnit = _$v.temperatureUnit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Temperature other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Temperature;
  }

  @override
  void update(void updates(TemperatureBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Temperature build() {
    final _$result = _$v ??
        new _$Temperature._(current: current, temperatureUnit: temperatureUnit);
    replace(_$result);
    return _$result;
  }
}
