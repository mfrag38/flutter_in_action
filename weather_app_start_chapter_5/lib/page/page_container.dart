import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start/page/forecast_page.dart';

class PageContainer extends StatefulWidget {
  final AppSettings settings;

  const PageContainer({Key key, this.settings}) : super(key: key);

  @override
  _PageContainerState createState() => _PageContainerState(settings);
}

class _PageContainerState extends State<PageContainer> {
  AppSettings settings;

  _PageContainerState(this.settings);

  // TODO: Implement PopUpMenuButton
  PopupMenuButton get citiesMenu => null;

  // TODO: Implement Settings page router button
  FlatButton get settingsButton => null;

  // TODO: Implement showSettings Page
  void _showSettingsPage() {}

  @override
  Widget build(BuildContext context) {
    return ForecastPage(
      menu: citiesMenu,
      settingsButton: settingsButton,
      settings: settings,
    );
  }
}
