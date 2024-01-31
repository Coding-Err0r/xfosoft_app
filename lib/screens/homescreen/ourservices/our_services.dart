import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/ourservices/servicecard/service_card.dart';
import 'package:rive_animation/utils/utils.dart';

class OurServices extends StatefulWidget {
  const OurServices({super.key});

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "OUR",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "SERVICES",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 189, 104),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "End-to-End strategic partner with efficient and on-demand design, engineering, and development services",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            for (var data in ourServiceData)
              ServiceCard(
                gif: data.gif,
                icon: data.icon,
                title: data.title,
                description: data.description,
              ),
          ],
        ),
      ),
    );
  }
}
