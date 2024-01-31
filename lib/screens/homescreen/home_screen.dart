import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/herosection/hero_section.dart';
import 'package:rive_animation/screens/homescreen/ourexpertise/our_expertise.dart';
import 'package:rive_animation/screens/homescreen/ourservices/our_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [HeroSection(), OurServices(), OurExpertise()],
      ),
    );
  }
}
