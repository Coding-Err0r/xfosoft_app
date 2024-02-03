import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import 'brandcard/brand_card.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "BRANDS WE",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "COLLABORATED WITH",
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 189, 104),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var data in BrandsData)
                    BrandCard(
                      title: data.title,
                      icon: data.icon,
                    ),
                ],
              )
            ],
          ),
        ));
  }
}
