import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({super.key, required this.countries});
  final CountryProps countries;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                //offset: Offset(0, 4),
                color: Colors.black38, //edited
                spreadRadius: 1,
                blurRadius: 2 //edited
                )
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountryFlag.fromCountryCode(
              countries.countryCode,
              height: 20,
              width: 30,
              borderRadius: 2,
            ),
            Text(
              countries.country,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 8),
            )
          ],
        ),
      ),
    );
  }
}
