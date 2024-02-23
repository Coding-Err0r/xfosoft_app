import 'dart:ui';

import 'package:flutter/material.dart';

import '../appdrawer/app_drawer.dart';
import 'serviceheader/service_header.dart';
import 'wcusection/why_choose_us_section.dart';
import 'wwdsection/what_we_deliver_section.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

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
              ServiceHeader(),
              WhyChooseUsSection(),
              WhatWeDeliverSection()
            ],
          ),
        ));
  }
}
