import 'package:adopte_a_candidate/widgets/cards/tag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../l10n/app_localizations.dart';
import '../buttons/localization_button.dart';

// Horizontal line, to separate elements
class CardLineHorizontal extends StatelessWidget {
  const CardLineHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
        ),
      ),
    );
  }
}

// Vertical line present below the card in the swipe page to seperate both check and cross buttons
class CardLineVertical extends StatelessWidget {
  const CardLineVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildNursePractitionerCard() {
  return Builder(
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        AppLocalizations.of(context)!.swipeExample1OfferTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeExample1OfferDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeRequiredSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferMainTag0),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferMainTag1),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferMainTag2),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferMainTag4),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferMainTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeAppreciatedSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferSideTag0),
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferSideTag1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferSideTag2),
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1OfferSideTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const localizationButton(),
                        Text(
                          AppLocalizations.of(context)!
                              .swipeExample1OfferLocation,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget buildSoftwareDeveloperCard() {
  return Builder(
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        AppLocalizations.of(context)!.swipeExample2OfferTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeExample2OfferDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeRequiredSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferMainTag0),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferMainTag1),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferMainTag2),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferMainTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeAppreciatedSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferSideTag0),
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferSideTag1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2OfferSideTag2),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const localizationButton(),
                        Text(
                          AppLocalizations.of(context)!
                              .swipeExample2OfferLocation,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget buildTechLeadCard() {
  return Builder(
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        AppLocalizations.of(context)!.swipeExample3OfferTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeExample3OfferDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeRequiredSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(text: 'Flutter'),
                        TagRequiredSkills(text: 'Dart'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TagRequiredSkills(text: 'Firebase'),
                        TagRequiredSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample3OfferMainTag3,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeAppreciatedSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample3OfferSideTag0,
                        ),
                        const TagAppreciatedSkills(text: 'Node.js'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample3OfferSideTag2),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 2),
                    const Row(
                      children: [
                        localizationButton(),
                        Text(
                          'New York, NY, USA',
                          //AppLocalizations.of(context)!.swipeExample3OfferLocation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget buildNursePractitionerProfileCard() {
  return Builder(
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeExample1SeekerDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeMainSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerMainTag0),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerMainTag1),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerMainTag2),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerMainTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerMainTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeSideSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerSideTag0),
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerSideTag1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerSideTag2),
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample1SeekerSideTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const localizationButton(),
                        Text(
                          AppLocalizations.of(context)!
                              .swipeExample1OfferLocation,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget buildSoftwareDeveloperProfileCard() {
  return Builder(
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        AppLocalizations.of(context)!
                            .swipeExample2SeekerDescription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeMainSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerMainTag0),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerMainTag1),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerMainTag2),
                        TagRequiredSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerMainTag3),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        AppLocalizations.of(context)!.swipeSideSkillsTitle,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerSideTag0),
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerSideTag1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagAppreciatedSkills(
                            text: AppLocalizations.of(context)!
                                .swipeExample2SeekerSideTag2),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const CardLineHorizontal(),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const localizationButton(),
                        Text(
                          AppLocalizations.of(context)!
                              .swipeExample2OfferLocation,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
