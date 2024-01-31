import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/ourexpertise/expertisecard/expertise_card.dart';
import 'package:rive_animation/utils/utils.dart';

class OurExpertise extends StatelessWidget {
  const OurExpertise({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(8.0),
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
                  "EXPERTISE",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 189, 104),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            for (var data in ourExpertiseData)
              ExpertiseCard(
                gif: data.gif,
                title: data.title,
                description: data.description,
                side: data.side,
              )
          ],
        ),
      ),
    );
  }
}
