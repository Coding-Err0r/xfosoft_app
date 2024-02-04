import 'package:flutter/material.dart';
import 'package:rive_animation/screens/aboutscreen/aboutsummary/aboutsummarycard/about_summary_card.dart';
import 'package:rive_animation/utils/utils.dart';

class AboutSummary extends StatelessWidget {
  const AboutSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          for (var data in AboutSummaryData)
            AboutSummaryCard(
              title: data.title,
              icon: data.icon,
              description: data.description,
            )
        ],
      ),
    );
  }
}
