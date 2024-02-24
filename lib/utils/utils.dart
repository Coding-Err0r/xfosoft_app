import 'package:flutter/material.dart';
import 'package:rive_animation/utils/devicons.dart';

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

class SliderProps {
  late String icon;
  late String title;
  late String description1;
  late String description2;
  SliderProps(this.icon, this.title, this.description1, this.description2);
}

class DeviconProps {
  late String icon;
  DeviconProps(this.icon);
}

class ServiceSectionProps {
  late String title1;
  late String title2;
  late String description;
  late List<SliderProps> sliderData;
  late List<DeviconProps> deviconsData;
  ServiceSectionProps(this.title1, this.title2, this.description,
      this.sliderData, this.deviconsData);
}

List<ServiceSectionProps> ServiceSectionData = [
  ServiceSectionProps(
      "SOFTWARE",
      "DEVELOPMENT",
      "We develop future-proof products and platforms through top-class engineering and solutions tailored to meet the requirements of different organizations across multiple industries.",
      [
        SliderProps(
            "assets/services/software_development/software-development (2).png",
            "Mobile Development",
            "From initial concept, app design to development and deployment we have got you covered. We develop custom applications and integrate existing business processes into your mobile app. We deliver heavy-duty, collaborative, performance-centric, and revenue-generating mobile applications to diverse businesses across different industry verticals.",
            "Our user-centric solutions aim to solve business specific problems while reducing costs, maximizing efficiency, and increasing profitability."),
        SliderProps(
            "assets/services/software_development/software-development (5).png",
            "Web Development",
            "We design, develop, and deliver personalized websites through intuitive planning, customer-centric approach, and latest technologies. We never approach a problem with a one-size-fits-all solution, instead we focus on individual business requirements and provide high-functioning, lead-generating, and responsive web app solutions.",
            "Our versatile domain experience and expertise in different technologies enable us to deliver cost-effective, scalable, brand-oriented, and future-ready web development services."),
        SliderProps(
            "assets/services/software_development/software-development (3).png",
            "Custom Software Development",
            "We bring together frontend, backend, full stack development, and database technologies to deliver end-to-end user-centric custom applications to businesses of all size. We ensure seamless integration, smooth user experience, maximum engagement, and rich functionalities across all layers of our custom software applications.",
            "Our applications come with dynamic integrations and functions, from payment gateways, attractive & interactive UI, and wallet management to social media integration, chat services, and real-time tracking."),
        SliderProps(
            "assets/services/software_development/software-development (4).png",
            "Systems Integration",
            "From API, Database, Legacy re-platforming to Accounting, ERP, and Payment Gateway, we provide a wide variety of backend integration services to help businesses connect their systems and data. Whether it be to connect the API to power applications, or to connect accounting systems to databases and business applications, we ensure seamless integrations across multiple channels. ",
            "Our integration services provide a detailed pathway from evaluation and architecture to development and management for businesses of all size across different industries."),
      ],
      [
        DeviconProps(DevIcons["apachekafka"]),
        DeviconProps(DevIcons["azure"]),
        DeviconProps(DevIcons["bootstrap"]),
        DeviconProps(DevIcons["bitbucket"]),
        DeviconProps(DevIcons["cakephp"]),
        DeviconProps(DevIcons["chrome"]),
        DeviconProps(DevIcons["codepen"]),
        DeviconProps(DevIcons["css3"]),
        DeviconProps(DevIcons["django"]),
        DeviconProps(DevIcons["dotnet"]),
        DeviconProps(DevIcons["figma"]),
        DeviconProps(DevIcons["flask"]),
        DeviconProps(DevIcons["firebase"]),
        DeviconProps(DevIcons["firefox"]),
        DeviconProps(DevIcons["facebook"]),
        DeviconProps(DevIcons["git"]),
        DeviconProps(DevIcons["github"]),
        DeviconProps(DevIcons["gitlab"]),
        DeviconProps(DevIcons["html5"]),
        DeviconProps(DevIcons["javascript"]),
        DeviconProps(DevIcons["materialui"]),
        DeviconProps(DevIcons["nestjs"]),
        DeviconProps(DevIcons["redis"]),
        DeviconProps(DevIcons["postgresql"]),
        DeviconProps(DevIcons["nextjs"]),
        DeviconProps(DevIcons["typescript"]),
        DeviconProps(DevIcons["spring"]),
        DeviconProps(DevIcons["wordpress"]),
        DeviconProps(DevIcons["csharp"]),
        DeviconProps(DevIcons["flutter"]),
        DeviconProps(DevIcons["nuxtjs"]),
        DeviconProps(DevIcons["phpstorm"]),
        DeviconProps(DevIcons["rust"]),
      ]),
  ServiceSectionProps(
      "IT Recruiting &",
      "Staffing",
      "We have the finest tech minds and skilled professionals tailored to meet your specific staffing needs. Our cohesive partnerships bring results for any individual or organization, one hire at a time.",
      [
        SliderProps(
            "assets/services/recuting/reciting (1).png",
            "Short-term Contract",
            "We believe that top talents are the key to any businesses' success. We understand that for any project to be successful, it's vital to expand cross-functional teams with people who have very niche expertise.",
            "To meet that end, we provide top-of-the-line IT experts, on short-term contracts, to bridge the gap between potential and performance, all while keeping in mind the needs and demands of different businesses."),
        SliderProps(
            "assets/services/recuting/reciting (3).png",
            "Long-term Contract",
            "We handpick top IT experts with a lot of care. We are always committed to finding the right fit for our clients, whether it be contractual or full-time employees for a company, vacancy, or project of any size.",
            "We help navigate the challenges to IT staffing and provide the most ideal talents, on long-term contracts, to different businesses. We cross-check their background, stability, expertise, and other related information to match them with our clients."),
        SliderProps(
            "assets/services/recuting/reciting (2).png",
            "Full Time",
            "We believe that people are a resource and always a good investment. We are always looking to provide top talents and certified IT experts to help businesses update their team, improve the pace of their projects, and speed up the entire development process for on-time delivery.",
            "We provide full time staffing solutions to different businesses to support and enhance their technology initiatives while maintaining specific business requirements."),
      ],
      [
        DeviconProps(DevIcons["shotgrid"]),
        DeviconProps(DevIcons["salesforce"]),
        DeviconProps(DevIcons["processing"]),
        DeviconProps(DevIcons["perl"]),
        DeviconProps(DevIcons["opera"]),
        DeviconProps(DevIcons["nixos"]),
        DeviconProps(DevIcons["networkx"]),
        DeviconProps(DevIcons["linux"]),
        DeviconProps(DevIcons["linkedin"]),
        DeviconProps(DevIcons["postman"]),
        DeviconProps(DevIcons["qtest"]),
        DeviconProps(DevIcons["latex"]),
        DeviconProps(DevIcons["labview"]),
        DeviconProps(DevIcons["knockout"]),
        DeviconProps(DevIcons["hugo"]),
        DeviconProps(DevIcons["google"]),
        DeviconProps(DevIcons["googlecloud"]),
        DeviconProps(DevIcons["firefox"]),
        DeviconProps(DevIcons["chrome"]),
        DeviconProps(DevIcons["crystal"]),
        DeviconProps(DevIcons["debian"]),
      ]),
  ServiceSectionProps(
      "Software Quality",
      "Assurance",
      "We elevate software quality and ensure your applications’ integrity with our meticulous precision testing. We ensure the reliability and performance of your software with our comprehensive testing and assurance service.",
      [
        SliderProps(
            "assets/services/quality/quality (1).png",
            "API Testing",
            "We believe that a successful product is the cornerstone of any business’ reputation and the foundation of a customer’s brand loyalty. Which is why, we aim to bulletproof your code by leveraging different technologies and API testing methods to identify and fix potential defects in web, mobile, and enterprise applications.",
            "We design our testing methods to efficiently deliver robust results that reduce the costs related to software bugs."),
        SliderProps(
            "assets/services/quality/quality (2).png",
            "Performance Testing",
            "We provide software testing automation service to measure the scalability, reliability, and performance of different business applications. We closely monitor their ability to handle high traffic, workload, speed, and resource usage to eliminate any performance bottlenecks.",
            "We test software applications using a variety of tools to determine responsiveness and stability."),
        SliderProps(
            "assets/services/quality/quality (3).png",
            "Automation Testing",
            "We provide QA automation testing services to ensure functionality, stability, and personalized user experience. We use multi-platform and regression testing with increased coverage to accurately, consistently, and seamlessly maintain the integrity of the application regardless of the platform or device in-use.",
            "We actively work on automation testing analytics to improve user experience and functionality."),
        SliderProps(
            "assets/services/quality/quality (4).png",
            "Security Testing",
            "We use our security testing services to detect and mitigate malware in your software applications. We implement static or dynamic testing, and application security assessments to improve data infrastructure and safety of applications. We integrate CI & CD in the development lifecycle to reduce downtime errors and increase security.",
            "We ensure that all applications are given structured testing throughout their lifecycle, from analysis and planning to development and support."),
      ],
      [
        DeviconProps(DevIcons["express"]),
        DeviconProps(DevIcons["foundation"]),
        DeviconProps(DevIcons["gcc"]),
        DeviconProps(DevIcons["gentoo"]),
        DeviconProps(DevIcons["gitlab"]),
        DeviconProps(DevIcons["google"]),
        DeviconProps(DevIcons["go"]),
        DeviconProps(DevIcons["grafana"]),
        DeviconProps(DevIcons["groovy"]),
        DeviconProps(DevIcons["haskell"]),
        DeviconProps(DevIcons["gulp"]),
        DeviconProps(DevIcons["java"]),
        DeviconProps(DevIcons["jeet"]),
        DeviconProps(DevIcons["meteor"]),
        DeviconProps(DevIcons["modx"]),
        DeviconProps(DevIcons["ocaml"]),
        DeviconProps(DevIcons["pandas"]),
        DeviconProps(DevIcons["putty"]),
        DeviconProps(DevIcons["salesforce"]),
        DeviconProps(DevIcons["sequelize"]),
        DeviconProps(DevIcons["microsoftsqlserver"]),
        DeviconProps(DevIcons["unix"]),
        DeviconProps(DevIcons["visualstudio"]),
        DeviconProps(DevIcons["vscode"]),
        DeviconProps(DevIcons["windows8"]),
        DeviconProps(DevIcons["webstorm"]),
        DeviconProps(DevIcons["selenium"]),
      ]),
  ServiceSectionProps(
      "AI & ML Based",
      "Solutions",
      "Our cutting-edge AI & ML solutions redefine what’s possible, from automation, predictive analytics to driving innovation in products & services. We harness the power of AI & ML to transform different businesses across multiple industry verticals.",
      [
        SliderProps(
            "assets/services/ai/ai (1).png",
            "Generative AI Development",
            "We strongly believe that AI managed services are the key to the future. Which is why, we assist businesses with high-functioning generative AI development services that solve complex problems, generate unique content, and customize user experience, all while meeting business specific needs.",
            "We speed-up product development through routine tasks automation. Our generative AI model unlocks creativity and innovation through unique contents, interactive arts & designs."),
        SliderProps(
            "assets/services/ai/ai (2).png",
            "Custom AI Integration",
            "We integrate the power of AI into business processes by connecting AI adeptness into existing software systems. We develop custom APIs for seamless consumption of personalized AI services. We aim to meet the strategic requirements of businesses of all sizes though our custom AI solutions.",
            "We gather data for sequential analysis & assessment, validation, and transformation to enhance the overall user experience and load-time."),
        SliderProps(
            "assets/services/ai/ai (3).png",
            "AI Powered Chatbot",
            "We deliver end-to-end AI chatbot development services to ease communication, boost customer satisfaction, maximize retention, and accelerate business growth. With our AI aided voice assistants and chatbots, businesses increase customer interaction, sales, and enhance overall customer experience.",
            "We leverage advanced AI technologies, such as machine learning and deep learning, to consecutively develop and update intelligent AI chatbots that cater to different businesses."),
        SliderProps(
            "assets/services/ai/ai (4).png",
            "HR & E-commerce Solutions",
            "We deliver automated workforce management systems to reduce unwanted bottlenecks and increase efficiency and performance. We provide B2B, B2C, D2C solutions to businesses across diversified sectors.",
            "We actively work on eCommerce automations, omnichannel experiences, payment gateways, and other automated processes."),
        SliderProps(
            "assets/services/ai/ai (5).png",
            "Machine Learning Model",
            "We utilize the latest Machine Learning Development methodologies to leverage advanced algorithms, predictive analytics, and pattern identification. We help businesses create innovative models that automate processes, improve operations, stimulate efficient intelligence-based decisions, and ultimately, drive growth.",
            "We streamline the process of building, training, deploying, and managing bespoke learning models using cutting-edge technologies and industry-based practices to deliver world-class results."),
        SliderProps(
            "assets/services/ai/ai (6).png",
            "Deep Learning Model",
            "We strongly believe that Deep Learning can harness the power of AI and help craft transformative AI based solutions. Which is why, our team of expert data scientists and engineers analyzes vast streams of data, recognize patterns, and provide informed and intelligent decisions to different businesses.",
            "We develop Deep Learning Model using complex algorithms and large data sets to enable accurate predictions, efficient data analysis, personalized suggestions, fraud detection, and predictive maintenance."),
        SliderProps(
            "assets/services/ai/ai (7).png",
            "Natural Language Processing",
            "We develop personalized NLP solutions to analyze and understand human language for automating tasks and processing unstructured data streams. From ideation and design to development and deployment, we provide end-to-end NLP services to enhance user engagement and overall communication.",
            "We create innovative & multi-lingual applications that understand diverse languages, contextual subtleties, and sector-specific jargons for different businesses."),
      ],
      [
        DeviconProps(DevIcons["opencv"]),
        DeviconProps(DevIcons["yii"]),
        DeviconProps(DevIcons["anaconda"]),
        DeviconProps(DevIcons["packer"]),
        DeviconProps(DevIcons["prometheus"]),
        DeviconProps(DevIcons["argocd"]),
        DeviconProps(DevIcons["typo3"]),
        DeviconProps(DevIcons["ubuntu"]),
        DeviconProps(DevIcons["thealgorithms"]),
        DeviconProps(DevIcons["towergit"]),
        DeviconProps(DevIcons["terraform"]),
        DeviconProps(DevIcons["tensorflow"]),
        DeviconProps(DevIcons["ssh"]),
        DeviconProps(DevIcons["sequelize"]),
        DeviconProps(DevIcons["selenium"]),
        DeviconProps(DevIcons["sdl"]),
        DeviconProps(DevIcons["qt"]),
        DeviconProps(DevIcons["pytorch"]),
        DeviconProps(DevIcons["pytest"]),
        DeviconProps(DevIcons["python"]),
        DeviconProps(DevIcons["opengl"]),
        DeviconProps(DevIcons["matlab"]),
        DeviconProps(DevIcons["jupyter"]),
        DeviconProps(DevIcons["git"]),
        DeviconProps(DevIcons["codecov"]),
      ]),
  ServiceSectionProps(
      "IT Maintenance &",
      "Support",
      "We are your IT lifeline, here to help you navigate IT challenges with ease. We keep your systems running flawlessly with our seamless IT maintenance and support service. We keep you ahead in the market by resolving issues swiftly, preventing downtime, and ensuring uninterrupted productivity.",
      [
        SliderProps(
            "assets/services/maintanence/maintanence (1).png",
            "Software Lifecycle Maintenance",
            "We stay by our clients throughout the entire lifecycle of a software product, from ideation and design to development and deployment. We actively support, update, and maintain software even after deployment to ensure efficiency and customer satisfaction.",
            "We continuously provide product monitoring, support, and lifecycle maintenance service to businesses across diversified industries to ensure they are always fueled and ready."),
        SliderProps(
            "assets/services/maintanence/maintanence (2).png",
            "DevOps",
            "We provide end-to-end qualitative service across all channels. We actively work on server and pipeline management with automated testing and design tools. We manage cloud hosting platforms where applications are deployed and continuously provision, monitor, and optimize their performance.",
            "Our engineers don't just code; they also monitor infrastructure-related tasks, health of the software applications, infrastructure components, and servers."),
        SliderProps(
            "assets/services/maintanence/maintanence (3).png",
            "Management Support",
            "We truly believe that the most important part of successful product development, consultation, and management is a continual thrust on quality, support, and management. From ideation to support, we always prioritize the operational effectiveness of different businesses.",
            "We intend to be a partner to our clients and not a vendor. We believe that applications need continuous support and maintenance, even after projects end, to continue functioning as required."),
      ],
      [
        DeviconProps(DevIcons["apachekafka"]),
        DeviconProps(DevIcons["appwrite"]),
        DeviconProps(DevIcons["bitbucket"]),
        DeviconProps(DevIcons["behance"]),
        DeviconProps(DevIcons["bulma"]),
        DeviconProps(DevIcons["circleci"]),
        DeviconProps(DevIcons["ceylon"]),
        DeviconProps(DevIcons["composer"]),
        DeviconProps(DevIcons["docker"]),
        DeviconProps(DevIcons["doctrine"]),
        DeviconProps(DevIcons["digitalocean"]),
        DeviconProps(DevIcons["eslint"]),
        DeviconProps(DevIcons["embeddedc"]),
        DeviconProps(DevIcons["filezilla"]),
        DeviconProps(DevIcons["gcc"]),
        DeviconProps(DevIcons["googlecloud"]),
        DeviconProps(DevIcons["gitter"]),
        DeviconProps(DevIcons["jest"]),
        DeviconProps(DevIcons["kubernetes"]),
        DeviconProps(DevIcons["oracle"]),
        DeviconProps(DevIcons["redhat"]),
        DeviconProps(DevIcons["spss"]),
        DeviconProps(DevIcons["subversion"]),
        DeviconProps(DevIcons["pytest"]),
      ]),
  ServiceSectionProps(
      "UI/UX",
      "Solutions",
      "We elevate user engagement and satisfaction with exceptionally captivating digital experiences and visual narratives. We create world-class UI/UX designs that resonate with users and drives customer loyalty.",
      [
        SliderProps(
            "assets/services/ui-ux/ux (1).png",
            "Interface Design",
            "We provide cutting-edge interface designs that bring attention, elevates user experience, and fit the needs of different businesses and their customers. We always aim to add a new dynamic to a web or mobile application's interface for easy, user-friendly, and personalized experience for all.",
            "We develop functional interfaces that are tailor made to be intuitive, expandable, convertible, consistent, and economic for all businesses."),
        SliderProps(
            "assets/services/ui-ux/ux (2).png",
            "Visual Design",
            "We design intuitive and interactive visuals custom made for different businesses, from conception and design to execution and deployment. We develop beautiful and high-end visuals that engage viewers, increase conversion and customer retention, and yield exemplary results.",
            "We survey the market, stay updated with latest trends & technologies, and craft uniquely compelling visuals that help businesses stand-out from their competitors."),
        SliderProps(
            "assets/services/ui-ux/ux (3).png",
            "Experience Design",
            "We build aesthetically pleasing and intuitively interactive designs that compliment the overall experience of the users and gain their trust. We maintain a sound balance between style, graphics, and performance to avoid bottlenecks, captivate users, and retain customers.",
            "We anticipate the user's needs and ensure the user experience is both flexible and scalable so that it can be altered according to the times and demand."),
      ],
      [
        DeviconProps(DevIcons["canva"]),
        DeviconProps(DevIcons["aftereffects"]),
        DeviconProps(DevIcons["illustrator"]),
        DeviconProps(DevIcons["phoenix"]),
        DeviconProps(DevIcons["photoshop"]),
        DeviconProps(DevIcons["bootstrap"]),
        DeviconProps(DevIcons["gimp"]),
        DeviconProps(DevIcons["figma"]),
        DeviconProps(DevIcons["inkscape"]),
        DeviconProps(DevIcons["xd"]),
        DeviconProps(DevIcons["flutter"]),
        DeviconProps(DevIcons["crystal"]),
        DeviconProps(DevIcons["centos"]),
        DeviconProps(DevIcons["premierepro"]),
        DeviconProps(DevIcons["xcode"]),
        DeviconProps(DevIcons["react"]),
        DeviconProps(DevIcons["webflow"]),
      ]),
];
