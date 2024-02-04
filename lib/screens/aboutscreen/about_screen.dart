import 'package:flutter/material.dart';
import 'package:rive_animation/screens/aboutscreen/aboutheader/about_header.dart';

import 'aboutsummary/about_summary.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [AboutHeader(), AboutSummary()],
      ),
    );
  }
}
