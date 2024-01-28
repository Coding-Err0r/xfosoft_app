import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:rive_animation/screens/appdrawer/app_drawer.dart';
import 'package:rive_animation/screens/homescreen/home_screen.dart';

class LiquidSwipeAnimation extends StatefulWidget {
  const LiquidSwipeAnimation({super.key});

  @override
  State<LiquidSwipeAnimation> createState() => _LiquidSwipeAnimationState();
}

class _LiquidSwipeAnimationState extends State<LiquidSwipeAnimation> {
  final pages = [HomeScreen(), AppDrawer()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: LiquidSwipe(
        pages: pages,
        slideIconWidget: Container(
          child: const CircleAvatar(
            backgroundColor: Colors.black,
          ),
        ),
        positionSlideIcon: 0.04,
        enableLoop: false,
        enableSideReveal: true,
      ),
    );
  }
}
