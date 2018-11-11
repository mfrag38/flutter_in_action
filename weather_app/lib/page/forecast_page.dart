import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/widget/forecast_table.dart';
import 'package:weather_app/widget/sun_background.dart';
import 'package:weather_app/widget/time_picker_row.dart';

var times = [
  '3:00',
  '6:00',
  '9:00',
  '12:00',
  '15:00',
  '18:00',
  '21:00',
  '0:00'
];

class ForecastPage extends StatefulWidget {
  @override
  _ForecastPageState createState() => new _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  int activeTabIndex;
  AnimationController _animationController;
  ColorTween _colorTween;
  ColorTween _backgroundColorTween;
  Color colorA = AppColor.periwinkleSky;
  Color colorB = AppColor.yellowSun;

  _ForecastPageState();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: times.length, vsync: this);
    _tabController.addListener(handleTabChange);
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    // get weather
    _buildColorTweens();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void handleTabChange() {
    _getDataForTweens();
    _buildColorTweens();
    _buildAnimationController();
    setState(() {
      activeTabIndex = _tabController.index;
      _initAnimation();
    });
  }

  void _initAnimation() {
    _animationController.forward();
  }

  void _buildAnimationController() {
    _animationController?.dispose();
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
  }

  void _buildColorTweens({ColorTuple sunColors, ColorTuple backgroundColors}) {
    _colorTween = new ColorTween(begin: colorA, end: colorB);
    _backgroundColorTween = new ColorTween(begin: colorA, end: colorB);
  }

  void _getDataForTweens() {}

  @override
  Widget build(BuildContext context) {
    var background = Sun(animation: _colorTween.animate(_animationController));

    var forecastContent = ForecastTableView();

    var mainContent = Container(
      padding: EdgeInsets.only(bottom: 24.0),
      child: Column(
        children: <Widget>[
          Text(
            "Monday. It's Sunny",
            style: Theme.of(context)
                .textTheme
                .subhead
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            activeTabIndex.toString(),
            style: Theme.of(context).textTheme.display3,
          ),
        ],
      ),
    );
    var timePickerRow =
        TimePickerRow(controller: _tabController, tabItems: times);

    return Container(
      color: _backgroundColorTween.animate(_animationController).value,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: background,
          ),
          Column(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              forecastContent,
              mainContent,
              Flexible(child: timePickerRow),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorTuple {
  final Color a;
  final Color b;

  ColorTuple(this.a, this.b);
}
