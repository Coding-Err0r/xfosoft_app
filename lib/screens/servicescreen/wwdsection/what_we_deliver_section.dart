import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

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
    return StackedCardCarousel(
      type: StackedCardCarouselType.cardsStack,
      initialOffset: 200,
      items: stackCards,
    );
  }
}
