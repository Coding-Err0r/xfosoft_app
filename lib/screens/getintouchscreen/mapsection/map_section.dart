import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class MapSection extends StatefulWidget {
  const MapSection({super.key, required this.url});
  final String url;

  @override
  State<MapSection> createState() => _MapSectionState();
}

class _MapSectionState extends State<MapSection> {
  late Widget iframeWidget;
  final IFrameElement iframeElement = IFrameElement();
  @override
  void initState() {
    super.initState();
    iframeElement.height = '40%';
    iframeElement.width = '100%';
    iframeElement.src = widget.url;
    iframeElement.style.border = 'none';
    ui.platformViewRegistry.registerViewFactory(
      widget.url,
      (int viewId) => iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(
      viewType: widget.url,
    );
  }
}
