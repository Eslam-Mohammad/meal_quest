import 'package:flutter/material.dart';
class CustomIndicatorList extends StatelessWidget {
  final int currentIndex;
  final int totalCount;

  const CustomIndicatorList({
    required this.currentIndex,
    required this.totalCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        totalCount,
            (index) => Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal:10),
            decoration: BoxDecoration(
              color: currentIndex == index ? const Color(0xff008C8C) : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}
