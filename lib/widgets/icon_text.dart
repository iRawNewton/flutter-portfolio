import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconText extends StatefulWidget {
  const IconText({super.key, required this.iconData, this.title, this.value});

  final IconData iconData;
  final String? title, value;

  @override
  State<IconText> createState() => _IconTextState();
}

class _IconTextState extends State<IconText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Icon(widget.iconData, color: Colors.white70),
          const SizedBox(width: 10.0),
          Text(
            widget.title ?? '',
            style: GoogleFonts.roboto(
              color: Colors.white70,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(width: 10.0),
          Text(
            widget.value ?? '',
            style: GoogleFonts.roboto(
              color: Colors.white70,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
