
import 'package:flutter/material.dart';
import 'package:meal_quest/core/utils/extension/responsive_size.dart';

class HorizontalGap extends StatelessWidget {
  final double value;
  const HorizontalGap(this.value,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * value,
    );
  }
}