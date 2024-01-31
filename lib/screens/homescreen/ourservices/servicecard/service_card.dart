import 'dart:ui';

import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 280,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Stack(
          children: [
            Image.asset('assets/images/our_service (5).gif',
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.loose,
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(color: Colors.black45),
                      ),
                    ),
                  ),
                  const Text(
                    "Software Development",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.black54,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      const ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/service/service (1).png'),
                        ),
                        title: Text(
                          "Software Development",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          "We develop future-proof products and platforms through top-class engineering and solutions",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 190,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.cyan,
                                foregroundColor: Colors.cyan,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("More Insight".toUpperCase(),
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 6, 151, 83),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                const Icon(
                                  Icons.arrow_right,
                                  color: Color.fromARGB(255, 6, 151, 83),
                                  size: 24,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width * 0.9,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Color.fromARGB(255, 160, 159, 159)))),
            )
          ],
        ),
      ),
    );
  }
}
