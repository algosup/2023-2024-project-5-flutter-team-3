import 'package:adopte_a_candidate/widgets/cards/card.dart';
import 'package:adopte_a_candidate/widgets/fields/localization_field.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

class EditJobOfferPage extends StatefulWidget {
  const EditJobOfferPage({super.key});

  @override
  State<EditJobOfferPage> createState() => _EditJobOfferPageState();
}

class _EditJobOfferPageState extends State<EditJobOfferPage> {
  TextEditingController jobOfferTitle =
      TextEditingController(text: 'Be a part of our team!');
  TextEditingController jobOfferDescription =
      TextEditingController(text: 'We are looking for a new team member!');
  TextEditingController jobOfferLocation =
      TextEditingController(text: 'Paris, France');
  TextEditingController mainSkillTags =
      TextEditingController(text: 'test1, test2, test3');
  TextEditingController sideSkillTags =
      TextEditingController(text: 'test4, test5, test6');

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
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 90,
                          maxHeight: 100,
                        ),
                        child: AutoSizeText(
                          AppLocalizations.of(context)!.editOfferTitle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Text field for the job offer title
                CustomTextField(
                  controller: jobOfferTitle,
                  title: AppLocalizations.of(context)!.offerTitle,
                  hintText: AppLocalizations.of(context)!.enterOfferTitle,
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 10),
                const CardLineHorizontal(),
                // Displays a horizontal line to comply with the design
                const SizedBox(height: 10),
                // Text field for the job offer description
                CustomTextField(
                  controller: jobOfferDescription,
                  title: AppLocalizations.of(context)!.offerDescription,
                  hintText: AppLocalizations.of(context)!.enterOfferDescription,
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 10),
                const CardLineHorizontal(),
                // Displays a horizontal line to comply with the design
                const SizedBox(height: 10),
                // Text field for the job offer location
                LocalizationField(
                  controller: jobOfferLocation,
                  title: AppLocalizations.of(context)!.offerLocation,
                  hintText: AppLocalizations.of(context)!.enterOfferLocation,
                  width: MediaQuery.of(context).size.width - 80,
                  height: 108,
                ),
                const SizedBox(height: 10),
                const CardLineHorizontal(),
                // Displays a horizontal line to comply with the design
                const SizedBox(height: 10),
                // Text field for the main skill tags
                CustomTextField(
                  controller: mainSkillTags,
                  title: AppLocalizations.of(context)!.offerMainTag,
                  hintText: AppLocalizations.of(context)!.enterOfferMainTag,
                  width: MediaQuery.of(context).size.width - 80,
                  height: 138,
                  isObscure: false,
                  showToggle: false,
                  isEmail: false,
                ),
                const SizedBox(height: 10),
                const CardLineHorizontal(), // Displays a horizontal line to comply with the design
                const SizedBox(height: 10),
                // Text field for the side skill tags
                CustomTextField(
                  controller: sideSkillTags,
                  title: AppLocalizations.of(context)!.offerSideTag,
                  hintText: AppLocalizations.of(context)!.enterOfferSideTag,
                  width: MediaQuery.of(context).size.width - 80,
                  height: 138,
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
                        backgroundColor:
                            const Color.fromARGB(255, 255, 213, 194),
                      ),
                      onPressed: () {
                        debugPrint('Save job offer');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.saveOffer,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 16),
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
