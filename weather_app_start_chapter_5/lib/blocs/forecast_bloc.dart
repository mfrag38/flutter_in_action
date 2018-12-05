import 'package:shared_lib/weather_app.dart';

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

  int getSelectedHourFromTabIndex(int index) {
    return selectedDay.hourlyWeather[index].dateTime.hour;
  }
}
