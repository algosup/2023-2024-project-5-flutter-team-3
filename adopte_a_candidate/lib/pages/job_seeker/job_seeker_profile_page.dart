// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/services/providers/providers.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/cards/card.dart';
import 'package:provider/provider.dart';
import '../../widgets/fields/container.dart';
import '../../widgets/fields/text_field.dart';
import '../../widgets/logo/logo.dart';
import '../../widgets/navbar/navigation_bar.dart';
import '../../widgets/buttons/modifier_button.dart';

// Profile Page, the user will be able to see his profile and modify his information.
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _controllerAboutMe = TextEditingController();
  final TextEditingController _controllerMainSkills = TextEditingController();
  final TextEditingController _controllerSideSkills = TextEditingController();

  bool isToggledAboutMe = false;
  bool isToggledMainSkills = false;
  bool isToggledSideSkills = false;

  final ValueNotifier<String> _aboutMeTextNotifier = ValueNotifier<String>('');

  @override
  void dispose() {
    _controllerAboutMe.dispose();
    _controllerMainSkills.dispose();
    _controllerSideSkills.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var profileState = Provider.of<ProfileState>(context);

    return Scaffold(
      appBar: const Logo(), // Display the logo in the AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Button leading to the setting page
                IconButton(
                  onPressed: () {
                    context.goNamed('settings');
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.describeYourself,
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: isToggledAboutMe,
                      replacement: const NonWritableAboutMe(),
                      child: AboutMeTextField(
                          aboutMeTextNotifier: _aboutMeTextNotifier),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(370, 0, 0, 0),
                      child: Visibility(
                        visible: !isToggledAboutMe,
                        replacement: GestureDetector(
                          onTap: () {
                            setState(() {
                              isToggledAboutMe = !isToggledAboutMe;
                              profileState
                                  .addAboutMeText(_aboutMeTextNotifier.value);
                            });
                          },
                          child: SvgPicture.asset(
                            'assets/images/check-circle.svg',
                            height: 25,
                            width: 30,
                          ),
                        ),
                        child: modifierButton(
                          onTap: () {
                            setState(() {
                              isToggledAboutMe = !isToggledAboutMe;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const CardLineHorizontal(), // Displays a horizontal line to comply with the design
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 55),
                ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 110,
                      maxHeight: 100,
                    ),
                    child: AutoSizeText(
                      AppLocalizations.of(context)!.addYourMainSkills,
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ))
              ],
            ),
            ValueListenableBuilder<List<String>>(
              valueListenable: ValueNotifier(profileState.mainSkills),
              builder: (context, mainSkills, child) {
                return Column(
                  children: [
                    MainTagsContainer(
                      mainSkills: mainSkills,
                      isEditMode: isToggledMainSkills,
                      removeSkill: (skill) {
                        profileState.removeMainSkill(skill);
                      },
                    ),
                    Visibility(
                      visible: isToggledMainSkills,
                      child: TextField(
                        controller: _controllerMainSkills,
                        decoration: InputDecoration(
                          hintText:
                              AppLocalizations.of(context)!.enterMainSkills,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              if (mainSkills.length < 5) {
                                // Restrict to 5 main skills
                                final newSkill =
                                    _controllerMainSkills.text.trim();
                                if (newSkill.isNotEmpty &&
                                    !mainSkills.contains(newSkill)) {
                                  profileState.addMainSkill(newSkill);
                                  _controllerMainSkills.clear();
                                }
                              } else {
                                // Show error message if more than 5 skills are added
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .errorMainSkills)),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    modifierButton(
                      onTap: () {
                        setState(() {
                          isToggledMainSkills = !isToggledMainSkills;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 10),
            const CardLineHorizontal(), // Displays a horizontal line to comply with the design
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 55),
                  ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 110,
                        maxHeight: 100,
                      ),
                      child: AutoSizeText(
                        AppLocalizations.of(context)!.addYourSideSkills,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            ValueListenableBuilder<List<String>>(
              valueListenable: ValueNotifier(profileState.sideSkills),
              builder: (context, sideSkills, child) {
                return Column(
                  children: [
                    SideSkillsContainer(
                      sideSkills: sideSkills,
                      isEditMode: isToggledSideSkills,
                      removeSkill: (skill) {
                        profileState.removeSideSkill(skill);
                      },
                    ),
                    Visibility(
                      visible: isToggledSideSkills,
                      child: TextField(
                        controller: _controllerSideSkills,
                        decoration: InputDecoration(
                          hintText:
                              AppLocalizations.of(context)!.enterSideSkills,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              if (sideSkills.length < 10) {
                                // Restrict to 10 side skills
                                final newSkill =
                                    _controllerSideSkills.text.trim();
                                if (newSkill.isNotEmpty &&
                                    !sideSkills.contains(newSkill)) {
                                  profileState.addSideSkill(newSkill);
                                  _controllerSideSkills.clear();
                                }
                              } else {
                                // Show error message if more than 10 skills are added
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .errorSideSkills)),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    modifierButton(
                      onTap: () {
                        setState(() {
                          isToggledSideSkills = !isToggledSideSkills;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute:
            '/job_seeker_profile', // Set the current route for ProfilePage
        onItemTapped: (index) {
          switch (index) {
            case 0:
              // Logic for profile page
              // You're already on the profile page, so no navigation needed
              break;
            case 1:
              // Logic for swipe page
              context.goNamed(
                  'job_seeker_swipe'); // Example navigation to the swipe page
              break;
            case 2:
              // Logic for messages page
              context.goNamed(
                  'job_seeker_message'); // Example navigation to the messages page
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
