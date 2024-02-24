import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ServiceModuleCard extends StatelessWidget {
  const ServiceModuleCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description1,
      required this.description2});
  final String icon;
  final String title;
  final String description1;
  final String description2;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 400,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  icon,
                  width: 50,
                  height: 50,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  description1,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                Text(
                  description2,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
