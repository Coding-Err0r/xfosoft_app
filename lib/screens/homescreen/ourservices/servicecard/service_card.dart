import 'dart:ui';

import 'package:flutter/material.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard(
      {super.key,
      required this.gif,
      required this.icon,
      required this.title,
      required this.description});
  final String gif;
  final String icon;
  final String title;
  final String description;
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(milliseconds: 600), vsync: this);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(0, 1.1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: GestureDetector(
          onTapDown: (event) {
            _controller.forward();
          },
          onTapUp: (event) {
            _controller.reverse();
          },
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Stack(
                children: [
                  Image.asset(widget.gif,
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
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(color: Colors.black45),
                            ),
                          ),
                        ),
                        Text(
                          widget.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SlideTransition(
                    position: _animation,
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 12),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(widget.icon),
                                  ),
                                  title: Text(
                                    widget.title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Text(
                                    widget.description,
                                    style: const TextStyle(
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          )),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text("More Insight".toUpperCase(),
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 6, 151, 83),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          const Icon(
                                            Icons.arrow_right,
                                            color:
                                                Color.fromARGB(255, 6, 151, 83),
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
          ),
        ),
      ),
    );
  }
}
