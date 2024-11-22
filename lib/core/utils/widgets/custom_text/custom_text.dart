import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String label;
  final TextStyle? style;
  final int maxLine;
  const CustomText({
    super.key,
    required this.label,
    this.style,
    this.maxLine = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      // context.tr(label),
      label,
      style: style,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      // locale: context.locale,
      textDirection: Directionality.of(context),
    );
  }
}