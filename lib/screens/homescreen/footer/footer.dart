import 'package:flutter/material.dart';
import 'package:rive_animation/screens/homescreen/footer/footerlinks/footer_links.dart';
import 'package:rive_animation/screens/homescreen/footer/footerservice/footer_service.dart';
import 'package:rive_animation/screens/homescreen/footer/footersupport/footer_support.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 204, 204, 204),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [FooterService(), FooterSupport()],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [FooterLinks()],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                // note: styles for textspans must be explicitly defined.
                // child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                      text: 'Address : ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          '26 Broadway, Suite 934, New York, New York 10004, United States'),
                ],
              )),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  text: const TextSpan(
                // note: styles for textspans must be explicitly defined.
                // child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                      text: 'Contact : ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '(212) 884-8837'),
                ],
              )),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  text: const TextSpan(
                // note: styles for textspans must be explicitly defined.
                // child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                      text: 'Email : ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'connect@Xfosoft.com'),
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}
