import 'package:flutter/material.dart';

// TODO: Make Text Animated
class TimePickerRow extends StatelessWidget {
  final TabController controller;
  final List<String> tabItems;

  const TimePickerRow({Key key, this.controller, this.tabItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black38,
      unselectedLabelStyle:
          Theme.of(context).textTheme.caption.copyWith(fontSize: 10.0),
      labelStyle: Theme.of(context).textTheme.caption.copyWith(fontSize: 12.0),
      indicatorColor: Colors.transparent,
      labelPadding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
      controller: controller,
      tabs: tabItems.map((t) => Text(t)).toList(),
      isScrollable: true,
    );
  }
}
