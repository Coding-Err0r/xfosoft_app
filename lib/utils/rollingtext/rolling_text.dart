import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class RollingText extends StatelessWidget {
  const RollingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTextStyle(
          style: const TextStyle(
              fontSize: 20.0,
              fontFamily: 'Horizon',
              color: Color.fromARGB(255, 0, 250, 133)),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('SIMPLE'),
              RotateAnimatedText('SMART'),
              RotateAnimatedText('SCALABLE'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    );
  }
}
