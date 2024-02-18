import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';

import 'visionarycard/visionary_card.dart';

class AboutVisionaries extends StatelessWidget {
  const AboutVisionaries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "OUR",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "VISIONARIES",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 189, 104),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            Column(
              children: [
                for (var data in VisionariesData)
                  VisionaryCard(
                    image: data.image,
                    name: data.name,
                    designation: data.designation,
                    description: data.description,
                    side: data.side,
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
