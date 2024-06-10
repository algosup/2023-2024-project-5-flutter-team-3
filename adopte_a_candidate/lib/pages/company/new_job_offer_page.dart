import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewJobOfferPage extends StatefulWidget {
  const NewJobOfferPage({super.key});

  @override
  State<NewJobOfferPage> createState() => _NewJobOfferPageState();
}

class _NewJobOfferPageState extends State<NewJobOfferPage> {
  final TextEditingController jobOfferTitle = TextEditingController();
  final TextEditingController jobOfferDescription = TextEditingController();
  final TextEditingController jobOfferLocation = TextEditingController();
  final TextEditingController mainSkillTags = TextEditingController();
  final TextEditingController sideSkillTags = TextEditingController();

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
                      'Add a new job offer',
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
                  hintText: 'Entrez le titre de l\'offre',
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 20),
                // Text field for the job offer description
                CustomTextField(
                  controller: jobOfferDescription,
                  title: 'Job Offer Description:',
                  hintText: 'Entrez la description de l\'offre',
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 20),
                // Text field for the job offer location
                CustomTextField(
                  controller: jobOfferLocation,
                  title: 'Job Offer Location:',
                  hintText: 'Entrez la localisation de l\'offre',
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 20),
                // Text field for the main skill tags
                CustomTextField(
                  controller: mainSkillTags,
                  title: 'Main Skill Tags:',
                  hintText: 'Entrez les compétences principales',
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 20),
                // Text field for the side skill tags
                CustomTextField(
                  controller: sideSkillTags,
                  title: 'Side Skill Tags:',
                  hintText: 'Entrez les compétences secondaires',
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
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
                        debugPrint('Add job offer');
                      },
                      child: Text(
                          'Add Job Offer',
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
