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
                      AppLocalizations.of(context)!.swipeAppreciatedSkillsTitle,
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
                      AppLocalizations.of(context)!.swipeAppreciatedSkillsTitle,
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
      );
    },
  );
}

Widget buildJobOfferCard1() {
  return Builder(builder: (context) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Tech Lead',
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const CardLineHorizontal(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Lead our tech team as a Tech Lead! Oversee the design, development, and implementation of software solutions. Mentor and guide junior developers, collaborate with cross-functional teams, and ensure high-quality code delivery. Drive innovation and manage projects across all development phases in a fast-paced, dynamic environment.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                    'Required Skills',
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TagRequiredSkills(text: 'Firebase'),
                    TagRequiredSkills(text: 'UI/UX Design'),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TagRequiredSkills(text: 'Mobile Development'),
                  ],
                ),
                const SizedBox(height: 5),
                const CardLineHorizontal(),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text(
                    AppLocalizations.of(context)!.swipeAppreciatedSkillsTitle,
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
                    TagAppreciatedSkills(text: 'Node.js'),
                    TagAppreciatedSkills(text: 'Frontend Development'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TagAppreciatedSkills(text: 'Backend Development'),
                  ],
                ),
                const SizedBox(height: 5),
                const CardLineHorizontal(),
                const SizedBox(height: 2),
                const Row(
                  children: [
                    localizationButton(),
                    Text(
                      'New York, USA',
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
    );
  });
}

Widget buildJobOfferCard2() {
  return Builder(
    builder: (context) {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Marketing Specialist',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Join our marketing team as a Marketing Specialist! You\'ll develop and implement strategic marketing campaigns, conduct market research, and analyze consumer behavior to drive business growth. Collaborate with creative and cross-functional teams to execute integrated marketing initiatives. Utilize digital marketing tools and analytics to optimize campaign performance and enhance brand presence in a competitive market environment.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                      'Required Skills',
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
                      TagRequiredSkills(text: 'Social Media Marketing'),
                      TagRequiredSkills(text: 'SEO'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Content Creation'),
                      TagRequiredSkills(text: 'Analytics'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Marketing Strategy'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 2),
                  const Row(
                    children: [
                      localizationButton(),
                      Text(
                        'San Francisco, USA',
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
      );
    },
  );
}

Widget buildJobOfferCard3() {
  return Builder(
    builder: (context) {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Graphic Designer',
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Join our creative team as a Graphic Designer! You\'ll conceptualize and create visual solutions for a variety of marketing materials, including advertisements, brochures, infographics, and digital content. Collaborate closely with marketing and content teams to ensure visual consistency and brand integrity across all channels. Use your creative expertise to translate concepts into visually compelling designs that resonate with our target audience.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                      'Required Skills',
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
                      TagRequiredSkills(text: 'Adobe Illustrator'),
                      TagRequiredSkills(text: 'Adobe Photoshop'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Typography'),
                      TagRequiredSkills(text: 'Color Theory'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Print Design'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 2),
                  const Row(
                    children: [
                      localizationButton(),
                      Text(
                        'London, UK',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Appreciated Skills',
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
                      TagAppreciatedSkills(text: 'Motion Graphics'),
                      TagAppreciatedSkills(text: 'Web Design'),
                      TagAppreciatedSkills(text: 'User Interface Design'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
