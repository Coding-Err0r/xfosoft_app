import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: double.infinity,
          color: Colors.white,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 22,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/avaters/Valtyr1.jpeg'),
                    ),
                    // child: Icon(
                    //   CupertinoIcons.person,
                    //   color: Colors.white,
                    // ),
                  ),
                  title: Text(
                    "Rhine",
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Developer",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.cyan,
                          foregroundColor: Colors.cyan,
                          padding: EdgeInsets.all(24),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.black,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text("Home".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16))
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
