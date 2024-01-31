import 'package:flutter/material.dart';

class OurServicesProps {
  late String gif;
  late String icon;
  late String title;
  late String description;
  OurServicesProps(this.gif, this.icon, this.title, this.description);
}

List<OurServicesProps> ourServiceData = [
  OurServicesProps(
      "assets/images/our_service (5).gif",
      "assets/service/service (1).png",
      "Software Development",
      "We develop future-proof products and platforms through top-class engineering and solutions"),
  OurServicesProps(
      "assets/images/our_service (3).gif",
      "assets/service/service (6).png",
      "IT Recruiting & Staffing",
      "We have the finest tech minds and skilled professionals tailored to meet your specific staffing needs"),
  OurServicesProps(
      "assets/images/our_service (6).gif",
      "assets/service/service (5).png",
      "Software Quality Assurance Service",
      "We elevate software quality and ensure your applications’ integrity with our meticulous precision testing"),
  OurServicesProps(
      "assets/images/our_service (4).gif",
      "assets/service/service (4).png",
      "AI Based Solutions",
      "Our cutting-edge AI solutions redefine what’s possible, from automation, predictive analytics to driving innovation in products & services"),
  OurServicesProps(
      "assets/images/our_service (2).gif",
      "assets/service/service (3).png",
      "IT Maintenance & Support",
      "We are your IT lifeline, here to help you navigate IT challenges with ease"),
  OurServicesProps(
      "assets/images/our_service (1).gif",
      "assets/service/service (2).png",
      "UI/UX Solution",
      "We elevate user engagement and satisfaction with exceptionally captivating digital experiences and visual narratives"),
];

class OurExpertiseProps {
  late String gif;
  late String title;
  late String description;
  late bool side;
  OurExpertiseProps(this.gif, this.title, this.description, this.side);
}

List<OurExpertiseProps> ourExpertiseData = [
  OurExpertiseProps(
      "assets/images/expertise (1).gif",
      "High-functioning Team",
      "We have an all-encompassing team of highly skilled developers and engineers experienced in the latest programming languages, technologies, and data science. From web development frameworks and cloud-based solutions to databases and mobile development platforms, we have expertise in a variety of technologies that enables us to build solutions that are smart, robust, scalable, and flexible to different business needs.",
      false),
  OurExpertiseProps(
      "assets/images/expertise (3).gif",
      "Dynamic Resources",
      "We provide top-tier services to our clients by utilizing a pool of dynamic, flexible, and highly adaptable resources. Our software developers, engineers, and experts pick a wide variety of latest tools, platforms, and technologies to create tailor-made solutions that fit our clients’ unique business goals. We strive to provide the highest quality of work using top-of-the-line technologies and our dynamic pool of resources.",
      true),
  OurExpertiseProps(
      "assets/images/expertise (2).gif",
      "Real-time Communication",
      "We strongly believe that communication is at the forefront of any successful project. Which is why we continuously keep our clients updated on the progress of their projects and communicate in real-time in case of any last-minute changes. Since we apply agile principles to our work, we are always in contact with our clients. We aim to provide the best possible experience for our clients while ensuring their business-specific needs.",
      false),
];

class DrawerButtonProps {
  late String title;
  late IconData icon;
  DrawerButtonProps(this.title, this.icon);
}

List<DrawerButtonProps> DrawerButtonData = [
  DrawerButtonProps("Home", Icons.home),
  DrawerButtonProps("About Us", Icons.person),
  DrawerButtonProps("Services", Icons.miscellaneous_services_rounded),
  DrawerButtonProps("Career", Icons.join_full),
];
