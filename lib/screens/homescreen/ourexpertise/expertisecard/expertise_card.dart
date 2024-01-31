import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ExpertiseCard extends StatefulWidget {
  const ExpertiseCard(
      {super.key,
      required this.gif,
      required this.title,
      required this.description,
      required this.side});
  final String gif;
  final String title;
  final String description;
  final bool side;

  @override
  State<ExpertiseCard> createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<ExpertiseCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(milliseconds: 600), vsync: this);

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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.asset(widget.gif,
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.description,
              style: const TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
