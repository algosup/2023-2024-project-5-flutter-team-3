// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/services/providers/providers.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/card/cards.dart';
import 'package:provider/provider.dart';
import '../widgets/buttons/settings_button.dart';
import '../widgets/card/tags.dart';
import '../widgets/fields/containers.dart';
import '../widgets/fields/text_field.dart';
import '../widgets/logo/logo.dart';
import '../widgets/navbar/navigation_bar.dart';
import '../widgets/buttons/modifier_button.dart';

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
  final ValueNotifier<List<String>> _mainSkillsNotifier = ValueNotifier<List<String>>([]);
  final ValueNotifier<List<String>> _sideSkillsNotifier = ValueNotifier<List<String>>([]);

  @override
  void dispose() {
    _controllerAboutMe.dispose();
    _controllerMainSkills.dispose();
    _controllerSideSkills.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var profileState = Provider.of<ProfileState>(context, listen: false);

    return Scaffold(
      appBar: const Logo(), // Display the logo in the AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // button leading to the setting page
                SettingsButton(onPressed: () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Describe yourself:',
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
                      child: AboutMeTextField(aboutMeTextNotifier: _aboutMeTextNotifier),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(370, 0, 0, 0),
                      child: Visibility(
                        visible: !isToggledAboutMe,
                        replacement: GestureDetector(
                          onTap: () {
                            setState(() {
                              isToggledAboutMe = !isToggledAboutMe;
                              profileState.addAboutMeText(_aboutMeTextNotifier.value);
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
            const CardLineHorizontal(), // Displays an horizontal line to comply with design
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 55),
                Text(
                  'Add your main skills (max 5):',
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            ValueListenableBuilder<List<String>>(
              valueListenable: _mainSkillsNotifier,
              builder: (context, mainSkills, child) {
                return Column(
                  children: [
                    MainTagsContainer(mainSkills: mainSkills),
                    Visibility(
                      visible: isToggledMainSkills,
                      child: TextField(
                        controller: _controllerMainSkills,
                        decoration: InputDecoration(
                          hintText: 'Add a skill',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              final newSkill = _controllerMainSkills.text.trim();
                              if (newSkill.isNotEmpty && !_mainSkillsNotifier.value.contains(newSkill)) {
                                _mainSkillsNotifier.value = List.from(mainSkills)..add(newSkill);
                                _controllerMainSkills.clear();
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
            const CardLineHorizontal(), // Displays an horizontal line to comply with design
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 55),
                  Text(
                    'Add your side skills and hobbies \n(max 10):',
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
            ValueListenableBuilder<List<String>>(
              valueListenable: _sideSkillsNotifier,
              builder: (context, sideSkills, child) {
                return Column(
                  children: [
                    SideSkillsContainer(sideSkills: sideSkills),
                    Visibility(
                      visible: isToggledSideSkills,
                      child: TextField(
                        controller: _controllerSideSkills,
                        decoration: InputDecoration(
                          hintText: 'Add a skill or hobby',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              final newSkill = _controllerSideSkills.text.trim();
                              if (newSkill.isNotEmpty && !_sideSkillsNotifier.value.contains(newSkill)) {
                                _sideSkillsNotifier.value = List.from(sideSkills)..add(newSkill);
                                _controllerSideSkills.clear();
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
            const SizedBox(height: 10),
            const CardLineHorizontal(), // Displays an horizontal line to comply with design
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/profile', // Set the current route for MessagePage
        onItemTapped: (index) {
          switch (index) {
            case 0:
            // Logic for profile page
            // You're already on the profile page, so no navigation needed
              break;
            case 1:
            // Logic for swipe page
              context.goNamed('swipe'); // Example navigation to the swipe page
              break;
            case 2:
            // Logic for messages page
              context.goNamed(
                  'message'); // Example navigation to the messages page
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}




