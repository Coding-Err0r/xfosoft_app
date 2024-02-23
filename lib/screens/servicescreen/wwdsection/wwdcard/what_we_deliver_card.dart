import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WWDCard extends StatefulWidget {
  const WWDCard({
    super.key,
    required this.title,
    required this.background,
    required this.description,
  });

  final String background;
  final String description;
  final String title;

  @override
  State<WWDCard> createState() => _WWDCardState();
}

class _WWDCardState extends State<WWDCard> {
  late bool visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
        key: Key(widget.title),
        onVisibilityChanged: (VisibilityInfo info) {
          if (info.visibleFraction >= 0.5) {
            setState(() {
              visible = true;
            });
          } else {
            visible = false;
          }
        },
        child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 400,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 3000),
                      curve: Curves.easeOutCubic,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 400,
                      transform: Matrix4.identity()..scale(visible ? 1.2 : 1),
                      child: Image.asset(
                        widget.background,
                        height: 400,
                        width: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.cover,
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 400,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black54, Colors.black12])),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        widget.description,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
