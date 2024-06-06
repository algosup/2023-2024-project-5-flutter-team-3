// Flutter base packages
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/card/cards.dart';
import '../widgets/card/tags.dart';
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

  @override
  void dispose() {
    _controllerAboutMe.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(), // Display the logo in the AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // button leading to the setting page
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
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //CustomTextField(
              // About Me text field, the user can make a small description about himself
              //  controller: _controllerAboutMe,
              //title: 'Describe yourself',
              // hinttext: 'Write a short description about yourself',
              //isObscure: false,
              // isEmail: false,
              // width: MediaQuery.of(context).size.width - 50,
              //heigth: 125,
              //showToggle: false),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 50,
                child: TextField(
                  controller: _controllerAboutMe,
                  maxLines: null,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xDDF5F5F5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffffd5c2),
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              )
            ]),
            const modifierButton(), // Displays the pen button, that will allow to change the information into the text field when pressed
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container that will contain the main tags of the user
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Wrap(children: [
                                TagRequiredSkills(
                                  text: 'Adaptability',
                                ),
                                TagRequiredSkills(
                                  text: 'Time Management',
                                ),
                                TagRequiredSkills(
                                  text: 'Humor',
                                ),
                              ]),
                            ]),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TagRequiredSkills(
                              text: 'Problem Solving',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const modifierButton(), // Displays the pen button, that will allow to change the information into the container above when pressed
            const SizedBox(height: 10),
            const CardLineHorizontal(), // Displays an horizontal line to comply with design
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
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
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 250,
              decoration: ShapeDecoration(
                color: const Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TagRequiredSkills(
                            text: 'Rugby',
                          ),
                          TagRequiredSkills(
                            text: 'Books',
                          ),
                          TagRequiredSkills(
                            text: 'Networking',
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TagRequiredSkills(
                          text: 'Patience',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: modifierButton()),
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
