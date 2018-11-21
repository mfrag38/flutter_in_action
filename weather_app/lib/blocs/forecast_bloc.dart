import 'package:weather_app/models/models.dart';
import 'package:weather_app/utils/forecast_animation_utils.dart';
import 'package:weather_app/utils/weather_data.dart' as weatherData;

class ForecastBloc {
  final String city;
  Forecast forecast;
  ForecastDay selectedDay;
  Weather selectedHourlyTemperature;
  DateTime _today = new DateTime.now();

  ForecastBloc(this.city) {
    forecast = weatherData.generateTenDayForecast(city);
    selectedDay = Forecast.getSelectedDayForecast(
        forecast, DateTime(_today.year, _today.month, _today.day));
    selectedHourlyTemperature = ForecastDay.getHourSelection(
        selectedDay, DateTime.now().toLocal().hour);
  }

  ForecastAnimationState getDataForNextAnimationState(int index) {
    var hour = getSelectedHourFromTabIndex(index);
    var newSelection = ForecastDay.getHourSelection(selectedDay, hour);
    var endAnimationState = new ForecastAnimationState.stateForNextSelection(
        newSelection.dateTime.hour, newSelection.description);

    // update selectedHourlyTemperature to currentChoice
    selectedHourlyTemperature = newSelection;
    return endAnimationState;
  }

  int getSelectedHourFromTabIndex(int index) {
    return selectedDay.hourlyWeather[index].dateTime.hour;
  }
}

