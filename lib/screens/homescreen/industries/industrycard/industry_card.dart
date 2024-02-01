import 'package:bouncy_widget/bouncy_widget.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class IndustryCard extends StatefulWidget {
  const IndustryCard({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  State<IndustryCard> createState() => _IndustryCardState();
}

class _IndustryCardState extends State<IndustryCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(milliseconds: 600), vsync: this);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset(0, 1.1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  late bool inView = false;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.title),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction >= 0.5) {
          setState(() {
            inView = true;
          });
          _controller.forward();
        } else {
          setState(() {
            inView = false;
          });
          _controller.reverse();
        }
      },
      child: inView == true
          ? SlideTransition(
              position: _animation,
              child: Container(
                width: 110,
                height: 110,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          //offset: Offset(0, 4),
                          color: Colors.black38, //edited
                          spreadRadius: 4,
                          blurRadius: 5 //edited
                          )
                    ]),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Bouncy(
                        duration: const Duration(milliseconds: 2000),
                        lift: 8,
                        ratio: 0.5,
                        pause: 0.5,
                        child: Image.asset(
                          widget.icon,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
