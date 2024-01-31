import 'package:flutter/material.dart';

class DrawerBtn extends StatelessWidget {
  const DrawerBtn({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
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