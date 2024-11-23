
import 'package:flutter/material.dart';

extension ResponsiveSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  // Get the width percentage of the screen
  double widthPercent(double percent) => screenWidth * percent;

  // Get the height percentage of the screen
  double heightPercent(double percent) => screenHeight * percent;

  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
}