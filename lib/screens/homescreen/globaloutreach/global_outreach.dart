import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';

import 'countries/countries.dart';
import 'mapbox/map_box.dart';

class GlobalOutReach extends StatelessWidget {
  const GlobalOutReach({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.zero,
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
                    "GLOBAL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "OUTREACH",
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
                  "We provide tailored IT solutions in both foreign and domestic markets",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              MapBox(),
              CarouselSlider(
                  options: CarouselOptions(
                    clipBehavior: Clip.hardEdge,
                    height: 400.0,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(microseconds: 800),
                    autoPlayInterval: const Duration(seconds: 4),
                    // enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    // aspectRatio: 16 / 9,
                    // viewportFraction: 0.8,
                  ),
                  items: CountriesData.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.white,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: MediaQuery.of(context).size.width,
                          child: Countries(
                            continent: i.continent,
                            countries: i.countries,
                          ),
                        );
                      },
                    );
                  }).toList()),
            ],
          ),
        ));
  }
}
