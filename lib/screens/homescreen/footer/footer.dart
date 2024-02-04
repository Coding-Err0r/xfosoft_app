import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/footer/footerlinks/footer_links.dart';
import 'package:rive_animation/screens/homescreen/footer/footerservice/footer_service.dart';
import 'package:rive_animation/screens/homescreen/footer/footersupport/footer_support.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 224, 224, 224),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FooterService(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          RichText(
                              text: const TextSpan(
                            // note: styles for textspans must be explicitly defined.
                            // child text spans will inherit styles from parent
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Address : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text:
                                      '26 Broadway, Suite 934, New York, New York 10004, United States',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          )),
                          const SizedBox(
                            height: 12,
                          ),
                          RichText(
                              text: const TextSpan(
                            // note: styles for textspans must be explicitly defined.
                            // child text spans will inherit styles from parent
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Contact : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text: '(212) 884-8837',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          )),
                          const SizedBox(
                            height: 12,
                          ),
                          RichText(
                              text: const TextSpan(
                            // note: styles for textspans must be explicitly defined.
                            // child text spans will inherit styles from parent
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: 'Email : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text: 'connect@Xfosoft.com',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FooterSupport(),
                  SizedBox(
                    height: 12,
                  ),
                  FooterLinks()
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.facebook, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  backgroundColor:
                      const Color.fromARGB(255, 36, 37, 58), // <-- Button color
                  foregroundColor: Colors.cyan, // <-- Splash color
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "X",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                  backgroundColor:
                      const Color.fromARGB(255, 36, 37, 58), // <-- Button color
                  foregroundColor: Colors.blue, // <-- Splash color
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "in",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                  backgroundColor:
                      const Color.fromARGB(255, 36, 37, 58), // <-- Button color
                  foregroundColor: Colors.cyanAccent, // <-- Splash color
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.play_arrow, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  backgroundColor:
                      const Color.fromARGB(255, 36, 37, 58), // <-- Button color
                  foregroundColor: Colors.red, // <-- Splash color
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: Colors.white,
          ),
          const Text(
            "Copyright ©️ 2023 Xfosoft IT Solutions - All Rights Reserved",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
