import 'dart:ui';

import 'package:flutter/material.dart';

import '../appdrawer/app_drawer.dart';
import 'contactform/contact_form.dart';
import 'contactusheader/contact_us_header.dart';
import 'infosection/info_section.dart';
import 'mapsection/map_section.dart';

class GetInTouchScreen extends StatelessWidget {
  const GetInTouchScreen({super.key});

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
              ContactUsHeader(),
              InfoSection(),
              SizedBox(
                height: 20,
              ),
              ContactForm(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
