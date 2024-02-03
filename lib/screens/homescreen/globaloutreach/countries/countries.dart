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
    return SizedBox(
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
          Center(
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: countries.length,
                itemBuilder: (_, index) {
                  return CountryCard(
                    countries: countries[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
