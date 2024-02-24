import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_animation/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'servicemodulecard/service_module_card.dart';

class ServiceModule extends StatefulWidget {
  const ServiceModule(
      {super.key,
      required this.header1,
      required this.header2,
      required this.description,
      required this.sliderData,
      required this.languageData});
  final String header1;
  final String header2;
  final String description;
  final List<SliderProps> sliderData;
  final List<DeviconProps> languageData;
  @override
  State<ServiceModule> createState() => _ServiceModuleState();
}

class _ServiceModuleState extends State<ServiceModule> {
  final CarouselController _controller = CarouselController();
  late int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.header1,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.header2,
                style: const TextStyle(
                    color: Color.fromARGB(255, 7, 189, 104),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              widget.description,
              style: const TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 400,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(microseconds: 800),
                  autoPlayInterval: const Duration(seconds: 4),
                  // enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: _controller,
              items: widget.sliderData.map((data) {
                return Builder(
                  builder: (BuildContext context) {
                    return ServiceModuleCard(
                      icon: data.icon,
                      title: data.title,
                      description1: data.description1,
                      description2: data.description2,
                    );
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: widget.sliderData.length,
            onDotClicked: (index) {
              _controller.jumpToPage(index);
            },
            effect: const ExpandingDotsEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 8.0,
                dotHeight: 8.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.indigo),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 40,
                autoPlay: true,
                viewportFraction: 0.2,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(microseconds: 800),
                autoPlayInterval: const Duration(seconds: 2),
                // enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
              carouselController: _controller,
              items: widget.languageData.map((data) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(data.icon),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
