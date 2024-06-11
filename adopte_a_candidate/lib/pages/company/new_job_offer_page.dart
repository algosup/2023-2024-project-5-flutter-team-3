import 'package:adopte_a_candidate/widgets/cards/card.dart';
import 'package:adopte_a_candidate/widgets/fields/localization_field.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          AppLocalizations.of(context)!.addNewOffer,
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
                const CardLineHorizontal(), // Displays a horizontal line to comply with the design
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
                const CardLineHorizontal(), // Displays a horizontal line to comply with the design
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
                const CardLineHorizontal(), // Displays a horizontal line to comply with the design
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
                        debugPrint('Add job offer');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.addOffer,
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
