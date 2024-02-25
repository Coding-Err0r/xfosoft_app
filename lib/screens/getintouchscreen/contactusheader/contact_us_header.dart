import 'package:flutter/material.dart';
import 'package:rive_animation/utils/colorfilltext/color_fill_text.dart';

class ContactUsHeader extends StatelessWidget {
  const ContactUsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/contact-us.jpg",
                fit: BoxFit.cover,
              )),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.2, 0.9],
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1)
              ],
            )),
            child: const Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "CONTACT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "US",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 250, 133),
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Innovate with Confidence. Use our top-tier expertise and explore the uncharted realms of innovation. Get in touch with us to find out how we can help you transform your business and reach newer heights. You envision it, We",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ColorFillText()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
