import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/models/src/weather.dart';

part 'serializers.g.dart';

@SerializersFor(const [Forecast, ForecastDay, Weather, TemperatureUnit])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
