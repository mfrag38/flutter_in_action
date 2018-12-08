import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:shared_lib/date_utils.dart';
import 'package:weather_app_start_chapter_6/blocs/forecast_bloc.dart';
import 'package:weather_app_start_chapter_6/models/models.dart';
import 'package:weather_app_start_chapter_6/styles.dart';
import 'package:weather_app_start_chapter_6/utils/flutter_ui_utils.dart';
import 'package:weather_app_start_chapter_6/utils/forecast_animation_utils.dart'
    as utils;
import 'package:weather_app_start_chapter_6/widget/clouds_background.dart';
import 'package:weather_app_start_chapter_6/widget/forecast_table.dart';
import 'package:weather_app_start_chapter_6/widget/sun_background.dart';
import 'package:weather_app_start_chapter_6/widget/time_picker_row.dart';

class ForecastPage extends StatefulWidget {
  final PopupMenuButton citiesMenu;
  final Widget settingsButton;
  final AppSettings settings;

  const ForecastPage({
    Key key,
    this.citiesMenu,
    this.settingsButton,
    @required this.settings,
  }) : super(key: key);

  @override
  _ForecastPageState createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  int activeTabIndex;
  ForecastBloc _bloc;

  // New properties for for chapter 6
  AnimationController _animationController;
  AnimationController _weatherConditionAnimationController;
  ColorTween _colorTween;
  ColorTween _backgroundColorTween;
  ColorTween _textColorTween;
  ColorTween _cloudColorTween;
  Tween<Offset> _positionOffsetTween;
  TweenSequence<Offset> _cloudPositionOffsetTween;
  ForecastAnimationState currentAnimationState;
  ForecastAnimationState nextAnimationState;

  @override
  void initState() {
    super.initState();
    _render();
  }

  /// didUpdateWidget is fired from Flutter whenever the
  /// widget receives a new configuration from elsewhere
  /// in the tree.
  ///
  /// In this case, it'll be called whenever the app settings change
  /// Because I've 'lifted state up' in this app.
  @override
  void didUpdateWidget(ForecastPage oldWidget) {
    // TODO: implement didUpdateWidget
  }

  void _render() {
    _bloc = new ForecastBloc(widget.settings.selectedCity);
    var startTime = _bloc.selectedHourlyTemperature.dateTime.hour;
    var startTabIndex = utils.hours.indexOf(startTime);
    _tabController = TabController(
      length: utils.hours.length,
      vsync: this,
      initialIndex: startTabIndex,
    );
    _tabController.addListener(handleTabChange);

    // TODO: handle animation updates
//    currentAnimationState =
//        _bloc.getDataForNextAnimationState(_tabController.index);
//    _handleStateChange();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    // TODO: dispose AnimationControllers
//    _animationController?.dispose();
    super.dispose();
  }

  void handleTabChange() {
    if (_tabController.indexIsChanging) return;
    setState(() {
      activeTabIndex = _tabController.index;
    });
  }

  /// New methods in Chapter 6
  ///
  /// setState isn't enough in this app, because there's an
  /// animation _every time_ that the state updates.
  /// This method should build animation controllers and tweens,
  /// and get relevant data
  void _handleStateChange() {
    // TODO: Implement _handleStateChange()
  }

  /// This method is called whenever the state changes
  /// On every state change in this app, the animation needs to be kicked off again
  void _initAnimation() {
    // TODO: Implement _initAnimation()
  }

  /// [AnimationController]s are rebuilt often in this app,
  /// Everytime the state changes. This method should rebuild them.
  /// Be sure to dispose of old controllers!
  ///
  void _buildAnimationControllers() {
    // TODO: Implement _buildAnimationControllers()
  }

  /// Because _each_ iteration of an animation has start
  /// and end points that can't be predetermined, we must
  /// build the Tweens and TweenSequence on the fly.
  ///
  /// i.e.:
  /// the start color & end color of the sun could be
  /// [AppColor.noonSun] => [AppColor.midnightSun],
  /// if the user starts on `12:00` on the [TabBar] and then
  /// selects `24:00`. It changes depending on what they select.
  ///
  void _buildTweens() {
    // TODO: Implement _buildTweens()
  }

  List<String> get _humanReadableHours {
    return utils.hours.map((hour) => '$hour:00').toList();
  }

  String get _weatherDescription {
    var day =
        DateUtils.weekdays[_bloc.selectedHourlyTemperature.dateTime.weekday];
    var description = _bloc.selectedHourlyTemperature.description.toString();
    return "$day. ${description.replaceFirst(description[0], description[0].toUpperCase())}.";
  }

  String get _currentTemp {
    var unit = utils.temperatureLabels[widget.settings.selectedTemperature];
    var temp = _bloc.selectedHourlyTemperature.temperature.current;

    if (widget.settings.selectedTemperature == TemperatureUnit.fahrenheit) {
      temp = Temperature.celsiusToFahrenheit(temp);
    }
    return '$temp $unit';
  }

  bool get isRaining =>
      _bloc.selectedHourlyTemperature.description == WeatherDescription.rain;

  @override
  Widget build(BuildContext context) {
    // TODO: pass animation to sun
    var background = Sun();

    // TODO: pass animation to table
    var forecastContent = ForecastTableView(
      settings: widget.settings,
      forecast: _bloc.forecast,
    );

    // TODO: Update to use ColorTransitionText in place of text
    var mainContent = Container(
      padding: EdgeInsets.only(bottom: 24.0),
      child: Column(
        children: <Widget>[
          Text(
            _weatherDescription,
            style: Theme.of(context).textTheme.headline,
          ),
          Text(
            _currentTemp,
            style: Theme.of(context).textTheme.display3,
          ),
        ],
      ),
    );

    var timePickerRow = TimePickerRow(
      controller: _tabController,
      tabItems: _humanReadableHours,
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight(context)),

        // TODO: Replace with TransitionAppBar
        child: AppBar(
          title: Text(widget.settings.selectedCity,
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .copyWith(color: AppColor.textColorLight)),
          elevation: 0.0,
          bottomOpacity: 0.0,
          actions: <Widget>[widget.settingsButton],
          leading: widget.citiesMenu,
        ),
      ),

      // TODO: Add ColorTransitionBox for background
      body: new Stack(
        children: <Widget>[
          // TODO: Use SlideTransitions
          // TODO: Use proper keys
          Positioned(
            top: 100.0,
            bottom: 100.0,
            child: background,
          ),
          Positioned(
            top: 200.0,
            child: Clouds(),
          ),
          Column(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              forecastContent,
              mainContent,
              // TODO: Use color transition text
              Flexible(child: timePickerRow),
            ],
          ),
        ],
      ),
    );
  }
}
