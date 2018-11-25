import 'package:flutter/material.dart';
import 'package:shared_lib/weather_app.dart';
import 'package:shared_lib/date_utils.dart';
import 'package:weather_app/blocs/forecast_bloc.dart';
import 'package:weather_app/models/models.dart';

import 'package:weather_app/utils/forecast_animation_utils.dart' as utils;
import 'package:weather_app/widget/transition_appbar.dart';
import 'package:weather_app/widget/clouds_background.dart';
import 'package:weather_app/widget/color_transition_text.dart';
import 'package:weather_app/widget/color_transition_box.dart';
import 'package:weather_app/widget/forecast_table.dart';
import 'package:weather_app/widget/sun_background.dart';
import 'package:weather_app/widget/time_picker_row.dart';

class ForecastPage extends StatefulWidget {
  final PopupMenuButton menu;
  final Widget settingsButton;
  final AppSettings settings;

  const ForecastPage({
    Key key,
    this.menu,
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
  AnimationController _animationController;
  AnimationController _weatherConditionAnimationController;
  ColorTween _colorTween;
  ColorTween _backgroundColorTween;
  ColorTween _textColorTween;
  ColorTween _cloudColorTween;
  Tween<Offset> _positionOffsetTween;
  TweenSequence<Offset> _cloudPositionOffsetTween;
  ForecastBloc _bloc;
  ForecastAnimationState currentAnimationState;
  ForecastAnimationState nextAnimationState;

  _ForecastPageState();

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(ForecastPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _init();
  }

  void _init() {
    _bloc = new ForecastBloc(widget.settings.selectedCity);
    var startTime = _bloc.selectedHourlyTemperature.dateTime.hour;
    print("forecastPage._init => startTime = $startTime");
    var startTabIndex = utils.hours.indexOf(startTime);
    print("forecastPage._init.startTabIndex = $startTabIndex");
    _tabController = TabController(
        length: utils.hours.length, vsync: this, initialIndex: startTabIndex);
    _tabController.addListener(handleTabChange);
    currentAnimationState =
        _bloc.getDataForNextAnimationState(_tabController.index);
    _handleStateChange();
  }

  void _handleStateChange() {
    nextAnimationState =
        _bloc.getDataForNextAnimationState(_tabController.index);
    _buildAnimationController();
    _buildTweens();
    setState(() {
      activeTabIndex = _tabController.index;
      _initAnimation();
    });
    // for next time the animation fires
    currentAnimationState = nextAnimationState;
  }

  @override
  void dispose() {
    _tabController?.dispose();
    _animationController?.dispose();
    super.dispose();
  }

  void handleTabChange() {
    if (_tabController.indexIsChanging) return;
    _handleStateChange();
  }

  void _initAnimation() {
    _animationController.forward();
    _weatherConditionAnimationController.forward();
  }

  void _buildAnimationController() {
    _animationController?.dispose();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _weatherConditionAnimationController?.dispose();
    _weatherConditionAnimationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
  }

  void _buildTweens() {
    _colorTween = new ColorTween(
      begin: currentAnimationState.sunColor,
      end: nextAnimationState.sunColor,
    );
    _backgroundColorTween = new ColorTween(
      begin: currentAnimationState.backgroundColor,
      end: nextAnimationState.backgroundColor,
    );
    _textColorTween = new ColorTween(
      begin: currentAnimationState.textColor,
      end: nextAnimationState.textColor,
    );
    _cloudColorTween = new ColorTween(
      begin: currentAnimationState.cloudColor,
      end: nextAnimationState.cloudColor,
    );
    _positionOffsetTween = new Tween<Offset>(
      begin: currentAnimationState.sunOffsetPosition,
      end: nextAnimationState.sunOffsetPosition,
    );

    var cloudOffsetSequence = new OffsetSequence.fromBeginAndEndPositions(
        currentAnimationState.cloudOffsetPosition,
        nextAnimationState.cloudOffsetPosition);
    _cloudPositionOffsetTween = new TweenSequence<Offset>(
      <TweenSequenceItem<Offset>>[
        TweenSequenceItem<Offset>(
          weight: 50.0,
          tween: Tween<Offset>(
            begin: cloudOffsetSequence.positionA,
            end: cloudOffsetSequence.positionB,
          ),
        ),
        TweenSequenceItem<Offset>(
          weight: 50.0,
          tween: Tween<Offset>(
            begin: cloudOffsetSequence.positionB,
            end: cloudOffsetSequence.positionC,
          ),
        ),
      ],
    );
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
    var background = Sun(animation: _colorTween.animate(_animationController));

    var forecastContent = ForecastTableView(
      settings: widget.settings,
      controller: _animationController,
      textColorTween: _textColorTween,
      forecast: _bloc.forecast,
    );

    var mainContent = Container(
      padding: EdgeInsets.only(bottom: 24.0),
      child: Column(
        children: <Widget>[
          ColorTransitionText(
            text: _weatherDescription,
            style: Theme.of(context).textTheme.headline,
            animation: _textColorTween.animate(_animationController),
          ),
          ColorTransitionText(
            text: _currentTemp,
            style: Theme.of(context).textTheme.display3,
            animation: _textColorTween.animate(_animationController),
          ),
        ],
      ),
    );

    var timePickerRow = TimePickerRow(
        controller: _tabController, tabItems: _humanReadableHours);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(utils.appBarHeight(context)),
        child: TransitionAppbar(
          animation: _backgroundColorTween.animate(_animationController),
          title: ColorTransitionText(
            text: _bloc.selectedHourlyTemperature.city,
            style: Theme.of(context).textTheme.headline,
            animation: _textColorTween.animate(_animationController),
          ),
          actionIcon: widget.settingsButton,
          leadingAction: widget.menu,
        ),
      ),
      body: ColorTransitionBox(
        animation: _backgroundColorTween.animate(_animationController),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          child: Stack(
            children: <Widget>[
              SlideTransition(
                key: Key("sun"),
                position: _positionOffsetTween.animate(_animationController),
                child: background,
              ),
              SlideTransition(
                position: _cloudPositionOffsetTween
                    .animate(_weatherConditionAnimationController),
                child: Clouds(
                  key: Key("clouds"),
                  isRaining: isRaining,
                  animation: _cloudColorTween.animate(_animationController),
                ),
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
        ),
      ),
    );
  }
}
