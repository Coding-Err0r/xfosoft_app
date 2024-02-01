import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SummaryCard extends StatefulWidget {
  const SummaryCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.number});

  final String title;
  final String icon;
  final int number;

  @override
  State<SummaryCard> createState() => _SummaryCardState();
}

class _SummaryCardState extends State<SummaryCard>
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
      key: Key(widget.title + widget.number.toString()),
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
                width: 120,
                height: 120,
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
                      Image.asset(
                        widget.icon,
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Countup(
                            begin: 0,
                            end: widget.number.toDouble(),
                            duration: const Duration(seconds: 3),
                            separator: ',',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            "+",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
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
