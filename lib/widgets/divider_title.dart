import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/colors.dart';

class AboutUsDivider extends StatefulWidget {
  const AboutUsDivider({super.key, required this.title});
  final String title;

  @override
  State<AboutUsDivider> createState() => _AboutUsDividerState();
}

class _AboutUsDividerState extends State<AboutUsDivider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 0, 24.0, 0),
      child: SizedBox(
        child: Row(
          children: [
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                color: accentColor,
              ),
            ),
            const SizedBox(width: 10.0),
            const Expanded(
              child: Divider(
                thickness: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
