import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:rive_animation/screens/aboutscreen/aboutteam/aboutteamcard/about_team_card.dart';

class AboutTeam extends StatelessWidget {
  const AboutTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "WHO",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "WE ARE",
                style: TextStyle(
                    color: Color.fromARGB(255, 7, 189, 104),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
          GridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.3,
            children: List.generate(4, //this is the total number of cards
                (index) {
              index = index + 1;
              return AboutTeamCard(
                gif: "assets/images/team ($index).gif",
                tlCorner: index == 1 ? true : false,
                brCorner: index == 4 ? true : false,
              );
            }),
          ),
          const SizedBox(
            height: 18,
          ),
          const ReadMoreText(
            "At Xfosoft IT Solutions Inc, we’re the champions of charting our course. We are a unique development company seamlessly merging creativity with feasibility. While we offer competitively priced development projects, we never compromise on quality. Our hallmark is delivering on our promises. As a top-tier software development company, we understand that our work doesn't end with project delivery. Our mission is to create success stories by adding substantial value to brands and helping them shine brightly in the tech sphere. Our purpose is to fuel your company's exemplary growth through our strategic and comprehensive solutions. Whether you're eager to collaborate with us or have inquiries, please don't hesitate to reach out. We're excited to assist you in achieving remarkable success with our dynamic solutions, including high-quality Recruitment outsourcing, that meet your business needs.",
            trimLines: 2,
            colorClickableText: Colors.cyan,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
