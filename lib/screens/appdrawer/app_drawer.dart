import 'package:flutter/material.dart';
import 'package:rive_animation/screens/appdrawer/drawerbtn/drawer_btn.dart';
import 'package:rive_animation/utils/utils.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
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
          for (var data in DrawerButtonData)
            DrawerBtn(
              title: data.title,
              icon: data.icon,
            )
        ],
      ),
    );
  }
}
