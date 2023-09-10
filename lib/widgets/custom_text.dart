import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double size;
  final FontWeight? fontWeight;
  final Color color;
  const CustomText({
    super.key,
    required this.title,
    required this.size,
    this.fontWeight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
