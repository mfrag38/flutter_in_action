import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:weather_app_start_chapter_5/styles.dart';

class SettingsPage extends StatefulWidget {
  final AppSettings settings;

  const SettingsPage({Key key, this.settings}) : super(key: key);

  @override
  SettingsPageState createState() {
    return new SettingsPageState();
  }
}

class SettingsPageState extends State<SettingsPage> {
  List<String> get temperatureOptions =>
      TemperatureUnit.values.map((u) => u.toString()).toList();

  void _handleCityActiveChange(bool b, String city) {
    setState(() {
      widget.settings.selectedCities[city] = b;
    });
  }

  void _handleTemperatureUnitChange(int selection) {
    setState(() {
      widget.settings.selectedTemperature =
          TemperatureUnit.values.toList()[selection];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings Page',
          style: TextStyle(color: AppColor.textColorLight),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Temperature Unit'),
            // TODO: Add segment control here
            // TODO: Add ListView.builder, Expanded here
          ],
        ),
      ),
    );
  }
}
