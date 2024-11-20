import 'package:flutter/material.dart';
class NavigationButton extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback onNext;

  const NavigationButton({
    required this.isLastPage,
    required this.onNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onNext,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        backgroundColor: const Color(0xff008C8C),
      ),
      child: Text(
        isLastPage ? "Get Start" : "Next",
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
