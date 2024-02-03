import 'package:flutter/material.dart';
import 'package:rive_animation/utils/utils.dart';

class FooterService extends StatelessWidget {
  const FooterService({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Service",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  decoration: TextDecoration.underline),
            ),
          ),
          for (var data in FooterServiceData)
            TextButton.icon(
              style: TextButton.styleFrom(
                  shadowColor: Colors.cyan,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              icon: const Icon(Icons.link),
              onPressed: () {},
              label: Text(data.title),
            ),
        ],
      ),
    );
  }
}
