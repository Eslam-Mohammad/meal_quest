
import 'package:flutter/material.dart';
import 'package:meal_quest/core/utils/extension/responsive_size.dart';

class VerticalGap extends StatelessWidget {
  final double value;
  const VerticalGap(this.value,{super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight*value,
    );
  }
}
