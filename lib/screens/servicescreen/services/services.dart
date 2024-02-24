import 'package:flutter/material.dart';

import '../../../components/servicemodule/service_movule.dart';
import '../../../utils/utils.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        for (var data in ServiceSectionData)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ServiceModule(
              header1: data.title1,
              header2: data.title2,
              description: data.description,
              sliderData: data.sliderData,
              languageData: data.deviconsData,
            ),
          )
      ]),
    );
  }
}
