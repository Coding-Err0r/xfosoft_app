import 'dart:ui';
import 'package:flutter/material.dart';
import '../screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const AppDrawer(),
      body: const Stack(
        children: <Widget>[
          HomeScreen(),
          // AppDrawer(),
        ],
      ),
    );
  }
}
