import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start_chapter_6/page/forecast_page.dart';
import 'package:weather_app_start_chapter_6/page/settings_page.dart';
import 'package:weather_app_start_chapter_6/styles.dart';
import 'package:weather_app_start_chapter_6/utils/forecast_animation_utils.dart'
    as utils;

class PageContainer extends StatefulWidget {
  final AppSettings settings;

  const PageContainer({Key key, this.settings}) : super(key: key);

  @override
  _PageContainerState createState() => _PageContainerState(settings);
}

class _PageContainerState extends State<PageContainer> {
  AppSettings settings;

  _PageContainerState(this.settings);

  PopupMenuButton get citiesMenu {
    return PopupMenuButton(
      elevation: 0.0,
      icon: Icon(
        Icons.location_city,
        color: AppColor.textColorLight,
      ),
      onSelected: (selection) =>
          setState(() => settings.selectedCity = selection),
      itemBuilder: (BuildContext context) {
        return settings.selectedCities.entries
            .where((MapEntry<String, bool> entry) => entry.value)
            .map((MapEntry<String, bool> entry) => PopupMenuItem(
                  value: entry.key,
                  child: Text(entry.key),
                ))
            .toList();
      },
    );
  }

  FlatButton get settingsButton {
    return FlatButton(
        child: Text(
          utils.temperatureLabels[settings.selectedTemperature],
          style: Theme.of(context)
              .textTheme
              .headline
              .copyWith(color: AppColor.textColorLight),
        ),
        onPressed: _showSettingsPage);
  }

  void _showSettingsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsPage(
              settings: settings,
            ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ForecastPage(
      citiesMenu: citiesMenu,
      settingsButton: settingsButton,
      settings: settings,
    );
  }
}
