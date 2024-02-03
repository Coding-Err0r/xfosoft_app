import 'package:flutter/material.dart';

class FooterSupport extends StatelessWidget {
  const FooterSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Support",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  decoration: TextDecoration.underline),
            ),
          ),
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
            label: const Text("Contact Us"),
          ),
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
            label: const Text("FAQ"),
          ),
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
            label: const Text("Subscribe"),
          ),
        ],
      ),
    );
  }
}
