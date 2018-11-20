import 'package:flutter/material.dart';
import 'package:weather_app/page/forecast_page.dart';

class PageContainer extends StatefulWidget {
  @override
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  String selectedCity = cities[0];

  PopupMenuButton get citiesMenu {
    return PopupMenuButton(
      icon: Icon(Icons.location_city),
      onSelected: (selection) => setState(() => selectedCity = selection),
      itemBuilder: (BuildContext context) {
        return cities
            .map((city) => PopupMenuItem(value: city, child: Text(city)))
            .toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ForecastPage(city: selectedCity, menu: citiesMenu);
  }
}

List<String> cities = ["Portland", "London", "Berlin", "Chaing Mai"];
