import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../custom_text.dart';

class EventCard extends StatelessWidget {
  final String instituteName, degree, year, grade;

  const EventCard({
    super.key,
    required this.instituteName,
    required this.degree,
    required this.year,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20.0,
                child: Icon(
                  Icons.school,
                  color: accentColor,
                ),
              ),
              const SizedBox(width: 20.0),
              CustomText(
                title: instituteName,
                size: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const SizedBox(
                width: 40.0,
              ),
              CustomText(
                title: degree,
                size: 16.0,
                // fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 40.0,
              ),
              CustomText(
                title: year,
                size: 16.0,
                // fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Row(
            children: [
              const SizedBox(
                width: 40.0,
              ),
              CustomText(
                title: grade,
                size: 16.0,
                // fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
