import 'package:flutter/material.dart';
import 'package:rive_animation/utils/rollingtext/rolling_text.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse('assets/videos/header.mp4'))
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            _controller.play();
            _controller.setLooping(true);
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size?.width ?? 0,
                    height: _controller.value.size?.height ?? 0,
                    child: VideoPlayer(_controller),
                  ),
                ),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RE-IMAGINE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "TOMORROW",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 250, 133),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Spearhead the Future of Digital Transformation Through",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      RollingText()
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
    // return SizedBox.expand(
    //   child: FittedBox(
    //     fit: BoxFit.cover,
    //     child: SizedBox(
    //       width: _controller.value.size?.width ?? 0,
    //       height: _controller.value.size?.height ?? 0,
    //       child: VideoPlayer(_controller),
    //     ),
    //   ),
    // );
  }
}
