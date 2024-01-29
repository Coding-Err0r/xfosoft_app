import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Positioned(
              top: 20,
              child: Image.asset(
                "assets/images/logo.png",
                height: MediaQuery.of(context).size.height * 0.07,
              ),
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
    );
  }
}
