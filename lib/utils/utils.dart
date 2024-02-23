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

List<Map<String, dynamic>> IndustriesData = [
  {
    "title": "E-Commerce",
    "icon": "assets/industry/shopping.png",
  },
  {
    "title": "Education",
    "icon": "assets/industry/education.png",
  },
  {
    "title": "Retail",
    "icon": "assets/industry/storefront.png",
  },
  {
    "title": "Real Estate",
    "icon": "assets/industry/deal.png",
  },
  {
    "title": "Telecom",
    "icon": "assets/industry/communication.png",
  },
  {
    "title": "Fintech",
    "icon": "assets/industry/payment.png",
  },
  {
    "title": "Food",
    "icon": "assets/industry/diet.png",
  },
  {
    "title": "Banking",
    "icon": "assets/industry/bank.png",
  },
  {
    "title": "Health",
    "icon": "assets/industry/medical.png",
  },
  {
    "title": "Travel",
    "icon": "assets/industry/airplane.png",
  },
  {
    "title": "Entertainment",
    "icon": "assets/industry/cinema.png",
  },
  {
    "title": "Startup",
    "icon": "assets/industry/rocket.png",
  },
  {
    "title": "Non-Profit",
    "icon": "assets/industry/helping-hand.png",
  },
  {
    "title": "Hospitality",
    "icon": "assets/industry/pin.png",
  },
  {
    "title": "Public Sector",
    "icon": "assets/industry/feedback.png",
  },
  {
    "title": "Automotive",
    "icon": "assets/industry/automotive.png",
  },
  {
    "title": "Software",
    "icon": "assets/industry/software.png",
  },
  {
    "title": "Miscellaneous",
    "icon": "assets/industry/box.png",
  },
];

class SummaryProps {
  late String title;
  late String icon;
  late int number;
  SummaryProps(this.title, this.icon, this.number);
}

List<SummaryProps> SummariesData = [
  SummaryProps("Projects", "assets/summary/verified.png", 100),
  SummaryProps("Products", "assets/summary/box.png", 40),
  SummaryProps("Experts", "assets/summary/leader.png", 300),
  SummaryProps("Countries", "assets/summary/coronavirus.png", 25),
  SummaryProps("Clients", "assets/summary/client.png", 80),
  SummaryProps("Years Experienced", "assets/summary/customer-review.png", 11),
];

class CountryProps {
  late String country;
  late String countryCode;
  CountryProps(this.country, this.countryCode);
}

class MapProps {
  late String continent;
  List<CountryProps> countries = [];
  MapProps(this.continent, this.countries);
}

List<MapProps> CountriesData = [
  MapProps("Asia", [
    CountryProps("Yemen", "YE"),
    CountryProps("Oman", "OM"),
    CountryProps("Jordan", "JO"),
    CountryProps("Maldives", "MV"),
    CountryProps("Thailand", "TH"),
    CountryProps("Bangladesh", "BD"),
    CountryProps("Sri Lanka", "LK"),
  ]),
  MapProps("North America", [
    CountryProps("USA", "US"),
    CountryProps("Canada", "CA"),
    CountryProps("Dominican Republic", "DO"),
  ]),
  MapProps("South America", [
    CountryProps("Bolivia", "BO"),
    CountryProps("Venezuela", "VE"),
    CountryProps("Peru", "PE"),
  ]),
  MapProps("Europe", [
    CountryProps("Norway", "NO"),
    CountryProps("Finland", "FI"),
    CountryProps("Estonia", "EE"),
    CountryProps("Greece", "GR"),
    CountryProps("Austria", "AT"),
    CountryProps("Belgium", "BE"),
  ]),
  MapProps("Africa", [
    CountryProps("Egypt", "EG"),
    CountryProps("Ethiopia", "ET"),
    CountryProps("Kenya", "KE"),
    CountryProps("South Africa", "ZA"),
    CountryProps("Tanzania", "TZ"),
  ]),
];

class BrandsProps {
  late String title;
  late String icon;
  BrandsProps(this.title, this.icon);
}

List<BrandsProps> BrandsData = [
  BrandsProps("Apple", "assets/brands/apple-logo.png"),
  BrandsProps("Google", "assets/brands/google.png"),
  BrandsProps("Apple", "assets/brands/apple-logo.png"),
  BrandsProps("Google", "assets/brands/google.png"),
];

class FooterServiceProps {
  late String title;
  FooterServiceProps(this.title);
}

List<FooterServiceProps> FooterServiceData = [
  FooterServiceProps("Software Development"),
  FooterServiceProps("Recruiting & Staffing"),
  FooterServiceProps("Quality Assurance"),
  FooterServiceProps("AI Based Solutions"),
  FooterServiceProps("Maintenance & Support"),
  FooterServiceProps("UI/UX Solutions"),
];

class FooterLinksProps {
  late String title;
  FooterLinksProps(this.title);
}

List<FooterLinksProps> FooterLinkData = [
  FooterLinksProps("About Us"),
  FooterLinksProps("About Us"),
  FooterLinksProps("Career - We are Hiring"),
  FooterLinksProps("Privacy Policy"),
];

class AboutSummaryProps {
  late String title;
  late String icon;
  late String description;
  AboutSummaryProps(this.title, this.icon, this.description);
}

List<AboutSummaryProps> AboutSummaryData = [
  AboutSummaryProps("Our Mission", "assets/images/target.gif",
      "Our mission is to catalyze your success. We specialize in dynamic software and web development, alongside strategic recruitment and staffing solutions, all meticulously tailored to empower your growth. Your success is at the heart of our mission, and we are committed to being your dedicated partner on the path to excellence."),
  AboutSummaryProps("Our Core Values", "assets/images/social-care.gif",
      "Our core values are the pillars of our identity. We ardently pursue excellence, infuse innovation & creativity into every endeavor, and uphold unwavering integrity. Collaboration is our strength, and our client-centric approach fuels exceptional results. With a commitment to continuous learning, community engagement, agility, and a passion for excellence, we define success together."),
  AboutSummaryProps("Our Vision", "assets/images/eye.gif",
      "Our vision at Xfosoft is to be a global leader at the intersection of technology and talent. We aim to revolutionize industries through innovative software and web development solutions while shaping careers and fostering a vibrant, inclusive, and dynamic community of professionals. Our vision is to continually push boundaries, exceed expectations, and be the driving force behind transformative change in the tech and staffing landscape."),
];

class WhatWeDeliverProps {
  late String gif;
  late String title;
  late String description;
  late bool side;
  WhatWeDeliverProps(this.gif, this.title, this.description, this.side);
}

List<WhatWeDeliverProps> WhatWeDeliverData = [
  WhatWeDeliverProps(
      "assets/images/whatwedeliver (1).gif",
      "Customer-Centricity",
      "We prioritize the needs of our clients. Our core focus is to deliver personalized solutions that meet your unique requirements and add value to your business. Whether you are a start-up, SME, or an MNC -we will design, craft, & deliver IT Solutions to enable you to disrupt the status quo and emerge as a market leader.",
      false),
  WhatWeDeliverProps(
      "assets/images/whatwedeliver (2).gif",
      "Agility",
      "We demolish the barriers between design, development, and deployment to strengthen feedback, security, and scalability. Our dynamic team never tires because of our agile model. Scrum framework ensures that our development cycle maintains a consistent pace without roadblocks. Whether you want end-to-end service or a product infrastructure, we will complete your project in time with measurable deliverables along the way.",
      true),
  WhatWeDeliverProps(
      "assets/images/whatwedeliver (3).gif",
      "Co-Creation",
      "We collaborate with your team to deliver end-to-end design, engineering, and development services. We work with your team to remove any bureaucratic red tape and enable swift, seamless software delivery cycles. Whether you're a team of 5 or 50, we will work with you hand-in-hand to deliver tangible results.",
      false),
];

class VisionariesProps {
  late String image;
  late String name;
  late String designation;
  late String description;
  late bool side;
  VisionariesProps(
      this.image, this.name, this.designation, this.description, this.side);
}

List<VisionariesProps> VisionariesData = [
  VisionariesProps(
      "assets/visionary/user (3).jpeg",
      "Tareq Ahmed",
      "Chief Product & Technology Officer",
      "At XFOSOFT, we lead the charge in fostering innovation across software development, recruitment, and consultancy. Our utmost dedication to excellence serves as the driving force behind technological advancement and our ability to seamlessly connect you with top-tier talent. We stand as your trusted partner in the ever-evolving tech and staffing landscape, wholeheartedly committed to propelling your success to greater heights. With a proven track record of innovation and a relentless pursuit of creative bounds, we are here to guide you on your journey towards progress.",
      false),
  VisionariesProps(
      "assets/visionary/user (2).jpeg",
      "Tarique Hassan",
      "Chief Operating Officer",
      "As the Chief Operating Officer, I am your trusted collaborator in achieving success. With a powerful fusion of software prowess, talent solutions, and expert consultancy, we pave the way for your company's boundless growth and prosperity. Our mission is to understand your unique needs, envision innovative solutions, and create value that sets you on top of the map. Together, let’s embark on a journey to unlock your company's full potential and reach new heights of achievement.",
      true),
  VisionariesProps(
      "assets/visionary/user (1).jpeg",
      "Mohammad Ullah",
      "Chief Revenue & Financial Officer",
      "As Chief Revenue and Financial Officer, my goal is to not just meet but exceed your financial objectives. We've harnessed the power of software excellence, strategic talent acquisition, and expert consultancy to consistently propel us toward remarkable milestones. This is a testament to our commitment to your success and our proven track record in delivering tangible financial results that work best for your business.",
      false),
];

class WCUProps {
  late String title;
  late String background;
  late String description;
  late bool side;
  WCUProps(this.title, this.background, this.description, this.side);
}

List<WCUProps> WCUData = [
  WCUProps(
      "Innovation",
      "assets/images/services (1).gif",
      "We believe in pushing the boundaries of what is possible. We always look into dynamic technologies and explore new frontiers in the field.",
      false),
  WCUProps(
      "Collaboration",
      "assets/images/services (2).gif",
      "We foster collaboration in everything we do. Our team's combined effort brings out the absolute best result-driven solution to any given problem.",
      true),
  WCUProps(
      "Dedication",
      "assets/images/services (3).gif",
      "We strive for excellence and integrity in all aspects of our work. We use every resource at our disposal to ensure results that elevate businesses to newer heights.",
      false),
];

class WWDProps {
  late String title;
  late String background;
  late String description;

  WWDProps(this.title, this.background, this.description);
}

List<WWDProps> WWDData = [
  WWDProps(
    "Strategy",
    "assets/images/whatWeDo (1).jpg",
    "We strive for excellence in everything we do. We ascertain the core problem that our clients are facing when running their business processes and develop cost-effective strategies to find the best possible outcome that will fit their specific needs.",
  ),
  WWDProps(
    "Solution",
    "assets/images/whatWeDo (1).png",
    "With a well-crafted strategy at hand, we assess the business requirements of our clients and lay a solid foundation. We define optimum quality by meticulously using dynamic technologies and flexible resources to build sustainable solutions.",
  ),
  WWDProps(
    "Service",
    "assets/images/whatWeDo (2).jpg",
    "Once the groundwork is done and the solution is market-ready, we move for deployment while ensuring product security, scalability, and adaptability. We continuously scale, optimize, and augment solutions through our maintenance & support service.",
  ),
];
