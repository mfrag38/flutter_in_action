import 'package:flutter/material.dart';
import 'package:weather_app/blocs/forecast_bloc.dart';
import 'package:weather_app/utils/date_utils.dart';
import 'package:weather_app/utils/forecast_animation_utils.dart';
import 'package:weather_app/widget/appbar.dart';
import 'package:weather_app/widget/color_transition_text.dart';
import 'package:weather_app/widget/color_transition_box.dart';
import 'package:weather_app/widget/forecast_table.dart';
import 'package:weather_app/widget/sun_background.dart';
import 'package:weather_app/widget/time_picker_row.dart';

class ForecastPage extends StatefulWidget {
  @override
  _ForecastPageState createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  int activeTabIndex;
  AnimationController _animationController;
  ColorTween _colorTween;
  ColorTween _backgroundColorTween;
  ColorTween _textColorTween;
  Tween<Offset> _positionOffsetTween;
  ForecastBloc _bloc;
  ForecastAnimationState currentAnimationState;
  ForecastAnimationState nextAnimationState;

  _ForecastPageState();

  @override
  void initState() {
    super.initState();
    _bloc = new ForecastBloc();
    var startTime = _bloc.selectedHourlyTemperature.dateTime.hour;
    var startTabIndex = hours.indexOf(startTime);
    _tabController = TabController(
        length: hours.length, vsync: this, initialIndex: startTabIndex);
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
  }

  void _buildAnimationController() {
    _animationController?.dispose();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
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
    _positionOffsetTween = new Tween<Offset>(
      begin: currentAnimationState.offsetPosition,
      end: nextAnimationState.offsetPosition,
    );
  }

  List<String> get _humanReadableHours {
    return hours.map((hour) => '$hour:00').toList();
  }

  String get _weatherDescription {
    var day =
        DateUtils.weekdays[_bloc.selectedHourlyTemperature.dateTime.weekday];
    var description =
        _bloc.selectedHourlyTemperature.description.toString().split('.')[1];
    return "$day. It's $description.";
  }

  String get _currentTemp {
    return "${_bloc.selectedHourlyTemperature.temperature.current.toString()}°C";
  }

  void handleDragUpdates(DragUpdateDetails details) {}

  void handleDragEnd(DragEndDetails details) {}

  @override
  Widget build(BuildContext context) {
    var background = Sun(animation: _colorTween.animate(_animationController));

    var forecastContent = ForecastTableView(
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
            style: Theme.of(context).textTheme.subhead,
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
          preferredSize: Size.fromHeight(appBarHeight(context)),
          child: TransitionAppbar(
            animation: _backgroundColorTween.animate(_animationController),
            title: ColorTransitionText(
              text: _bloc.selectedHourlyTemperature.city,
              style: Theme.of(context).textTheme.headline,
              animation: _textColorTween.animate(_animationController),
            ),
          )),
      body: ColorTransitionBox(
        animation: _backgroundColorTween.animate(_animationController),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          child: Stack(
            children: <Widget>[
              SlideTransition(
                position: _positionOffsetTween.animate(_animationController),
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
        ),
      ),
    );
  }
}
