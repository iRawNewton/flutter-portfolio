import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/colors.dart';
import 'package:flutter_portfolio/widgets/timeline/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimelineTile extends StatelessWidget {
  final bool isFirst, isLast, isPast;
  final String instituteName, degree, year, grade;
  const CustomTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.instituteName,
    required this.degree,
    required this.year,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      alignment: TimelineAlign.start,
      // * decorate line
      beforeLineStyle: const LineStyle(
        color: accentColor,
      ),
      // * decorate the icon
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0,
        width: 20.0,
        color: accentColor,
        iconStyle: IconStyle(
          iconData: Icons.circle,
          fontSize: 16.0,
          color: const Color(0xff222222),
        ),
      ),

      endChild: Column(
        children: [
          EventCard(
            instituteName: instituteName,
            degree: degree,
            year: year,
            grade: grade,
          ),
        ],
      ),
    );
  }
}
