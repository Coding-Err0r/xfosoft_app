import 'package:flutter/material.dart';
import 'package:rive_animation/screens/aboutscreen/about_screen.dart';
import 'package:rive_animation/screens/screens.dart';

class DrawerBtn extends StatelessWidget {
  const DrawerBtn({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.cyan,
              foregroundColor: Colors.cyan,
              padding: const EdgeInsets.all(24),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              )),
          onPressed: () {
            if (title.toLowerCase() == "about us") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            }
            if (title.toLowerCase() == "home") {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            }
          },
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.black,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(title.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16))
            ],
          )),
    );
  }
}
