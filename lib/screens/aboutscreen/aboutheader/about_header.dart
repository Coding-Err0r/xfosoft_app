import 'package:flutter/material.dart';

import '../../../utils/wavytext/wavy_text.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

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
                "assets/about/about.jpg",
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
                    WavyText(),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Xfosoft IT Solutions Inc. is a maestro in website design, development, and comprehensive IT solutions serving the USA and clients worldwide. Our unwavering dedication to excellence propels businesses to success through top-tier IT services.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Since our inception in 2014 in New York, our team of 50+ skilled professionals have been crafting robust web presences. Our strength lies in designing visually captivating, expert solutions tailored to your business needs. We collaborate with local and global clients, offering strategically sound design expertise across diverse domains.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
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
