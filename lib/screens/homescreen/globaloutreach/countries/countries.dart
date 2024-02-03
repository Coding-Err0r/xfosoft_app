import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';

import '../countrycard/country_card.dart';

class Countries extends StatelessWidget {
  const Countries(
      {super.key, required this.continent, required this.countries});
  final String continent;
  final List<CountryProps> countries;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            continent,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: countries.length,
              itemBuilder: (_, index) {
                return CountryCard(
                  countries: countries[index],
                );
              }),
        ],
      ),
    );
  }
}
