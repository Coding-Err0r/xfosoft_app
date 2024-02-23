import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WCUCard extends StatefulWidget {
  const WCUCard(
      {super.key,
      required this.title,
      required this.background,
      required this.description,
      required this.side});
  final String title;
  final String background;
  final String description;
  final bool side;
  @override
  State<WCUCard> createState() => _WCUCardState();
}

class _WCUCardState extends State<WCUCard> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 600), vsync: this);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset(widget.side == true ? 1.1 : -1.1, 0),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.title),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction >= 0.5) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      child: SlideTransition(
        position: _animation,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: const Color.fromARGB(255, 41, 212, 235)),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Image.asset(
                  widget.background,
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            )),
      ),
    );
  }
}
