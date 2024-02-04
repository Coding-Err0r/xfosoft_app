import 'package:flutter/material.dart';

class AboutSummaryCard extends StatelessWidget {
  const AboutSummaryCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.description});
  final String title;
  final String icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 189, 188, 188), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
