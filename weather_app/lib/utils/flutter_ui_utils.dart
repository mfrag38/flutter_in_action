import 'package:flutter/material.dart';

double appBarHeight(BuildContext context) {
  return screenAwareSize(40.0, context) + MediaQuery.of(context).padding.top;
}

const double baseHeight = 950.0;
double screenAwareSize(double size, BuildContext context) {
  double drawingHeight =
      MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
  return size * drawingHeight / baseHeight;
}