import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypeText extends StatelessWidget {
  const TypeText({super.key});

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
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('DIGITAL + CLOUD + AI',
                      speed: const Duration(milliseconds: 100)),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
