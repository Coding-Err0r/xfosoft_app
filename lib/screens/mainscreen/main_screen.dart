import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/home_screen.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Xfosoft",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyan),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 22,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/avaters/Valtyr1.jpeg'),
                ),
              ),
              title: Text(
                "Rhine",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Developer",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.cyan,
                      foregroundColor: Colors.cyan,
                      padding: const EdgeInsets.all(24),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      Text("Home".toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  )),
            ),
          ],
        ),
      ),
      body: const Stack(
        children: <Widget>[
          HomeScreen(),
          // AppDrawer(),
        ],
      ),
    );
  }
}
