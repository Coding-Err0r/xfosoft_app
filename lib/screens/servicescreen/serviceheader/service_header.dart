import 'package:flutter/material.dart';

import '../../../utils/typetext/type_text.dart';
import '../../../utils/wavytext/wavy_text.dart';

class ServiceHeader extends StatefulWidget {
  const ServiceHeader({super.key});

  @override
  State<ServiceHeader> createState() => _ServiceHeaderState();
}

class _ServiceHeaderState extends State<ServiceHeader> {
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
                "assets/service/serviceHeader.jpg",
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
                    TypeText(),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "At Xfosoft, Digital IT Solutions meet cutting-edge technology to transform your business. We develop top of the line applications and solutions that meet market needs, empower brands, and encourage growth.",
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
                      "With our diverse team of experts, we strive to deliver world-class solutions tailored to fit your requirements. Get in touch with us to find out how we can help your business achieve newer heights.",
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
