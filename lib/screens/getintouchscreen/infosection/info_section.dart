import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(8.0),
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
                  "BOOK AN",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "APPOINTMENT",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 189, 104),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.phone_android),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Give us a call",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      CountryFlag.fromCountryCode(
                        'US',
                        height: 20,
                        width: 30,
                        borderRadius: 2,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "(212) 884-8837",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      CountryFlag.fromCountryCode(
                        'BD',
                        height: 20,
                        width: 30,
                        borderRadius: 2,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "+8801618871514",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Send us an email",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      "connect@Xfosoft.com",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.share_location),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      "26 Broadway, Suite 934, New York, New York 10004, United States",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
