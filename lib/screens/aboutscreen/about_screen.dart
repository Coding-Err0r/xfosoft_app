import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive_animation/screens/aboutscreen/aboutheader/about_header.dart';
import 'package:rive_animation/screens/aboutscreen/aboutteam/about_team.dart';
import 'package:rive_animation/screens/aboutscreen/aboutvisionaries/about_visionaries.dart';
import 'package:rive_animation/screens/aboutscreen/whatwedeliver/what_we_deliver.dart';
import 'package:rive_animation/screens/homescreen/footer/footer.dart';

import '../appdrawer/app_drawer.dart';
import 'aboutsummary/about_summary.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
              AboutHeader(),
              AboutSummary(),
              AboutTeam(),
              WhatWeDeliver(),
              AboutVisionaries(),
              Footer()
            ],
          ),
        ));
  }
}
