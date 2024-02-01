import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/summaries/summarycard/summary_card.dart';
import 'package:rive_animation/utils/utils.dart';

class Summaries extends StatelessWidget {
  const Summaries({super.key});

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
                  "OUR JOURNEY",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "SO FAR",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 189, 104),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "A brief rundown of our accomplishments",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: SummariesData.length,
                itemBuilder: (_, index) {
                  return SummaryCard(
                    title: SummariesData.elementAt(index).title,
                    icon: SummariesData.elementAt(index).icon,
                    number: SummariesData.elementAt(index).number,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
