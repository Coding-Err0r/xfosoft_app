import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VisionaryCard extends StatefulWidget {
  const VisionaryCard(
      {super.key,
      required this.image,
      required this.name,
      required this.designation,
      required this.description,
      required this.side});
  final String image;
  final String name;
  final String designation;
  final String description;
  final bool side;

  @override
  State<VisionaryCard> createState() => _VisionaryCardState();
}

class _VisionaryCardState extends State<VisionaryCard> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 600), vsync: this);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset(widget.side == true ? 1.1 : -1.1, 0),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));


  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.name),
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
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 218, 218),
                border: Border.all(color: const Color.fromARGB(255, 41, 212, 235)),
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    widget.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    widget.designation,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    widget.description,
                    style: const TextStyle(color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
