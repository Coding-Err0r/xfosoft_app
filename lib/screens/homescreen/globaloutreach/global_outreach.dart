import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'countries/countries.dart';
import 'mapbox/map_box.dart';

class GlobalOutReach extends StatefulWidget {
  const GlobalOutReach({super.key});

  @override
  State<GlobalOutReach> createState() => _GlobalOutReachState();
}

class _GlobalOutReachState extends State<GlobalOutReach> {
  late int currentIndex = 0;
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: CarouselSlider(
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
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        }),
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
              ),
              AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: CountriesData.length,
                effect: const WormEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.indigo),
              )
            ],
          ),
        ));
  }
}
