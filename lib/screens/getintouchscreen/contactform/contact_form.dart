import 'package:awesome_select/awesome_select.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    List<S2Choice<String>> options = [
      S2Choice<String>(
          value: "Software Development", title: "Software Development"),
      S2Choice<String>(
          value: "IT Recruiting & Staffing", title: "IT Recruiting & Staffing"),
      S2Choice<String>(
          value: "Software Quality Assurance Service",
          title: "Software Quality Assurance Service"),
      S2Choice<String>(
          value: "AI Based Solutions", title: "AI Based Solutions"),
      S2Choice<String>(
          value: "IT Maintenance & Support", title: "IT Maintenance & Support"),
      S2Choice<String>(value: "UI/UX Solution", title: "UI/UX Solution"),
      S2Choice<String>(
          value: "Mobile Development", title: "Mobile Development"),
      S2Choice<String>(
          value: "Custom Software Development",
          title: "Custom Software Development"),
      S2Choice<String>(
          value: "Systems Integration", title: "Systems Integration"),
      S2Choice<String>(
          value: "Part Time/Contractual", title: "Part Time/Contractual"),
      S2Choice<String>(value: "Full Time/Project", title: "Full Time/Project"),
      S2Choice<String>(value: "API Testing", title: "API Testing"),
      S2Choice<String>(
          value: "Performance Testing", title: "Performance Testing"),
      S2Choice<String>(value: "Selenium Testing", title: "Selenium Testing"),
      S2Choice<String>(value: "Security Testing", title: "Security Testing"),
      S2Choice<String>(
          value: "Generative AI Development",
          title: "Generative AI Development"),
      S2Choice<String>(
          value: "Custom AI Integration", title: "Custom AI Integration"),
      S2Choice<String>(
          value: "AI Powered Chatbot", title: "AI Powered Chatbot"),
      S2Choice<String>(
          value: "HR & E-commerce Solutions",
          title: "HR & E-commerce Solutions"),
      S2Choice<String>(
          value: "Machine Learning Model Development",
          title: "Machine Learning Model Development"),
      S2Choice<String>(
          value: "Deep Learning Model Development",
          title: "Deep Learning Model Development"),
      S2Choice<String>(
          value: "Natural Language Processing",
          title: "Natural Language Processing"),
      S2Choice<String>(
          value: "Software Lifecycle Maintenance",
          title: "Software Lifecycle Maintenance"),
      S2Choice<String>(
          value: "Management Support", title: "Management Support"),
      S2Choice<String>(value: "DevOps", title: "DevOps"),
      S2Choice<String>(value: "Interface Designs", title: "Interface Designs"),
      S2Choice<String>(
          value: "Visuals / Wireframing", title: "Visuals / Wireframing"),
      S2Choice<String>(value: "Experience Design", title: "Experience Design"),
    ];

    late String _value = '';
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ), // changes position of shadow
          ]),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'FIRST NAME',
                suffixText: '*',
                suffixStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'LAST NAME',
                suffixText: '*',
                suffixStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'SUBJECT',
                suffixText: '*',
                suffixStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'EMAIL',
                suffixText: '*',
                suffixStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'COMPANY',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Row(children: [
              const CountryCodePicker(
                onChanged: print,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'BD',
                favorite: ['+880', 'BD'],
                // optional. Shows only country name and flag
                showCountryOnly: false,
                // optional. Shows only country name and flag when popup is closed.
                showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
              ),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'How can we help you ?',
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Desired Services",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SmartSelect<String>.single(
                    title: 'Select',
                    choiceItems: options,
                    modalFilter: true,
                    modalFilterAuto: true,
                    onChange: (state) {
                      setState(() => _value = state.value);
                      print(_value);
                    },
                    selectedValue: _value,
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Let's Talk",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 2, 172, 163)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.green))))),
            ),
          )
        ]),
      ),
    );
  }
}
