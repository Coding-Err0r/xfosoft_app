import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class WavyText extends StatelessWidget {
  const WavyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: const TextStyle(
                  fontFamily: 'Horizon',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('KNOW'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                  fontFamily: 'Horizon',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 250, 133)),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('US'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
