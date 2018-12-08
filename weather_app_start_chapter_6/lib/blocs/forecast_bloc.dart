import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start_chapter_6/models/src/forecast_animation_state.dart';

class ForecastBloc {
  final String city;
  Forecast forecast;
  ForecastDay selectedDay;
  Weather selectedHourlyTemperature;
  DateTime _today = new DateTime.now();

  ForecastBloc(this.city) {
    var helper = new WeatherDataHelper();
    forecast = helper.generateTenDayForecast(city);
    selectedDay = Forecast.getSelectedDayForecast(
        forecast, DateTime(_today.year, _today.month, _today.day));
    selectedHourlyTemperature = ForecastDay.getHourSelection(
        selectedDay, DateTime.now().toLocal().hour);
  }

  /// The Forecast animation a collection of many animations
  /// executed at the same time. This method combines and returns
  /// _end state_ of those properties. All of these properties
  /// will be the `end` value of a Tween
  ///
  /// [ForecastAnimationState] properties:
  /// final Color backgroundColor;
  //  final Color sunColor;
  //  final Color textColor;
  //  final Color cloudColor;
  //  final double verticalOffsetPosition;
  //  final double cloudHorizontalOffsetPosition;
  ForecastAnimationState getDataForNextAnimationState(int index) {
    // TODO: Implement getDataForNextAnimationState
  }

  int getSelectedHourFromTabIndex(int index) {
    return selectedDay.hourlyWeather[index].dateTime.hour;
  }
}
