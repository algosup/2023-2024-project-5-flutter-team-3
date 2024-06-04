import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EditJobOfferPage extends StatefulWidget {
  const EditJobOfferPage({super.key});

  @override
  State<EditJobOfferPage> createState() => _EditJobOfferPageState();
}

class _EditJobOfferPageState extends State<EditJobOfferPage> {
  TextEditingController jobOfferTitle = TextEditingController(text: 'Be a part of our team!');
  TextEditingController jobOfferDescription = TextEditingController(text: 'We are looking for a new team member!');
  TextEditingController jobOfferLocation = TextEditingController(text: 'Paris, France');
  TextEditingController mainSkillTags = TextEditingController(text: 'test1, test2, test3');
  TextEditingController sideSkillTags = TextEditingController(text: 'test4, test5, test6');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            context.goNamed('company_profile');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Edit your job offer',
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Text field for the job offer title
                    CustomTextField(
                      controller: jobOfferTitle,
                      title: 'Job Offer Title:',
                      hinttext: 'Entrez le titre de l\'offre',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                    ),
                    const SizedBox(height: 20),
                    // Text field for the job offer description
                    CustomTextField(
                      controller: jobOfferDescription,
                      title: 'Job Offer Description:',
                      hinttext: 'Entrez la description de l\'offre',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                    ),
                    const SizedBox(height: 20),
                    // Text field for the job offer location
                    CustomTextField(
                      controller: jobOfferLocation,
                      title: 'Job Offer Location:',
                      hinttext: 'Entrez la localisation de l\'offre',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                    ),
                    const SizedBox(height: 20),
                    // Text field for the main skill tags
                    CustomTextField(
                      controller: mainSkillTags,
                      title: 'Main Skill Tags:',
                      hinttext: 'Entrez les compétences principales',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                    ),
                    const SizedBox(height: 20),
                    // Text field for the side skill tags
                    CustomTextField(
                      controller: sideSkillTags,
                      title: 'Side Skill Tags:',
                      hinttext: 'Entrez les compétences secondaires',
                      width: MediaQuery.of(context).size.width - 80,
                      heigth: 108,
                      isObscure: false,
                      showToggle: false,
                      isEmail: false,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 255, 213, 194),
                          ),
                          onPressed: () {
                            debugPrint('Save job offer');
                          },
                          child: Text(
                            'Save Job Offer',
                            style: GoogleFonts.josefinSans(
                              textStyle: const TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}
