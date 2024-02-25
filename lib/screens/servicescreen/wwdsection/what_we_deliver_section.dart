import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:rive_animation/utils/utils.dart';

import 'wwdcard/what_we_deliver_card.dart';

class WhatWeDeliverSection extends StatelessWidget {
  const WhatWeDeliverSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> stackCards = <Widget>[
      WWDCard(
        title: WWDData[0].title,
        background: WWDData[0].background,
        description: WWDData[0].description,
      ),
      WWDCard(
        title: WWDData[1].title,
        background: WWDData[1].background,
        description: WWDData[1].description,
      ),
      WWDCard(
        title: WWDData[2].title,
        background: WWDData[2].background,
        description: WWDData[2].description,
      ),
    ];
    return Container(
      child: Swiper(
        itemWidth: MediaQuery.of(context).size.width * 0.9,
        itemHeight: 400,
        loop: true,
        duration: 400,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return WWDCard(
            title: WWDData[index].title,
            background: WWDData[index].background,
            description: WWDData[index].description,
          );
        },
        itemCount: 3,
        layout: SwiperLayout.TINDER,
        curve: Curves.bounceInOut,
      ),
    );
  }
}
