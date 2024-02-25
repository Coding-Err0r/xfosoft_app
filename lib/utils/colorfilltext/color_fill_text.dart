import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ColorFillText extends StatelessWidget {
  const ColorFillText({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.white30,
      Colors.cyan,
      Color.fromARGB(255, 0, 250, 133)
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );

    return Positioned.fill(
      top: MediaQuery.of(context).size.height * 0.56,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  speed: const Duration(milliseconds: 300),
                  'BUILD IT',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  speed: const Duration(milliseconds: 300),
                  'DESIGN IT',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  speed: const Duration(milliseconds: 300),
                  'DEVELOP IT',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ],
        ),
      ),
    );
  }
}
