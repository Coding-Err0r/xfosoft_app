import 'package:flutter/material.dart';

class AboutTeamCard extends StatefulWidget {
  const AboutTeamCard(
      {super.key,
      required this.gif,
      required this.tlCorner,
      required this.brCorner});
  final String gif;
  final bool tlCorner;
  final bool brCorner;
  @override
  State<AboutTeamCard> createState() => _AboutTeamCardState();
}

class _AboutTeamCardState extends State<AboutTeamCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.tlCorner == true ? 20 : 0),
              bottomRight: Radius.circular(widget.brCorner == true ? 20 : 0)),
          boxShadow: const [
            BoxShadow(
                //offset: Offset(0, 4),
                color: Colors.black38, //edited
                spreadRadius: 1,
                blurRadius: 2 //edited
                )
          ]),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(widget.tlCorner == true ? 20 : 0),
              bottomRight: Radius.circular(widget.brCorner == true ? 20 : 0)),
          image: DecorationImage(
            image: AssetImage(widget.gif),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
