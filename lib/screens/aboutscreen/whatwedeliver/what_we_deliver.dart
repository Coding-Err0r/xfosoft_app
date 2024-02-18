import 'package:flutter/material.dart';
import 'package:rive_animation/screens/aboutscreen/whatwedeliver/whatwedelivercard/what_we_deliver_card.dart';
import 'package:rive_animation/utils/utils.dart';

class WhatWeDeliver extends StatelessWidget {
  const WhatWeDeliver({super.key});

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
                  "WHAT WE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "DELIVER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 189, 104),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            for (var data in WhatWeDeliverData)
              WhatWeDeliverCard(
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