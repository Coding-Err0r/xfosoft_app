import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/globaloutreach/global_outreach.dart';
import 'package:rive_animation/screens/homescreen/herosection/hero_section.dart';
import 'package:rive_animation/screens/homescreen/industries/industries.dart';
import 'package:rive_animation/screens/homescreen/ourexpertise/our_expertise.dart';
import 'package:rive_animation/screens/homescreen/ourservices/our_services.dart';
import 'package:rive_animation/screens/homescreen/summaries/summaries.dart';

import '../appdrawer/app_drawer.dart';
import 'brands/brands.dart';
import 'footer/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white.withAlpha(10),
          title: const Text(
            "Xfosoft",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyan),
          ),
          iconTheme: const IconThemeData(color: Colors.grey),
        ),
        drawer: const AppDrawer(),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(),
              OurServices(),
              OurExpertise(),
              Industries(),
              Summaries(),
              GlobalOutReach(),
              Brands(),
              Footer()
            ],
          ),
        ));
  }
}
