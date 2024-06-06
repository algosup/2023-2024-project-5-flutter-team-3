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
import '../widgets/fields/containers.dart';
import '../widgets/fields/text_field.dart';
import '../widgets/logo/logo.dart';
import '../widgets/navbar/navigation_bar.dart';
import '../widgets/buttons/modifier_button.dart';

// Profile Page, the user will be able to see his profile and modify his information.
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _controllerAboutMe = TextEditingController();
  bool isToggledAboutMe = false;
  final ValueNotifier<String> _aboutMeTextNotifier = ValueNotifier<String>('');

  List<String> aboutMeText = [];

  @override
  void dispose() {
    _controllerAboutMe.dispose();
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
                SettingsButton(onPressed: () {})
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
                  )
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
            // Displays the pen button, that will allow to change the information into the text field when pressed
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container that will contain the main tags of the user
                MainTagsContainer(),
              ],
            ),
            modifierButton(
              onTap: () {},
            ), // Displays the pen button, that will allow to change the information into the container above when pressed
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
            const SideSkillsContainer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,5),
              child: modifierButton(onTap: (){}),
            ),
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





