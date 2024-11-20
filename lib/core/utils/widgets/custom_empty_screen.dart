import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomEmptyScreen extends StatelessWidget {
  final String message;
  const CustomEmptyScreen({
    super.key, required this.message,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        message,
        style: GoogleFonts.gabarito(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}