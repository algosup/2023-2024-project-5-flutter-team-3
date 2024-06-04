// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/services/providers/providers.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/card/cards.dart';
import 'package:provider/provider.dart';
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
                IconButton(
                  onPressed: () {},
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
                            child: SvgPicture.asset('assets/images/check-circle.svg',
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
                ]),
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
                      side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
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
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: modifierButton(
                  onTap: () {},
                )
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

class NonWritableAboutMe extends StatelessWidget {
  const NonWritableAboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Listen to changes in the ProfileState
    var profileState = Provider.of<ProfileState>(context);

    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width - 50,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          profileState.aboutMeTexts.join("\n"), // Use the latest text from the ProfileState
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class AboutMeTextField extends StatefulWidget {
  const AboutMeTextField({
    super.key,
    required this.aboutMeTextNotifier,
  });

  final ValueNotifier<String> aboutMeTextNotifier;

  @override
  _AboutMeTextFieldState createState() => _AboutMeTextFieldState();
}

class _AboutMeTextFieldState extends State<AboutMeTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.aboutMeTextNotifier.value);

    widget.aboutMeTextNotifier.addListener(() {
      if (_controller.text != widget.aboutMeTextNotifier.value) {
        _controller.text = widget.aboutMeTextNotifier.value;
      }
    });
  }

  @override
  void dispose() {
    widget.aboutMeTextNotifier.removeListener(() {
      if (_controller.text != widget.aboutMeTextNotifier.value) {
        _controller.text = widget.aboutMeTextNotifier.value;
      }
    });
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width - 50,
      child: TextField(
        controller: _controller,
        onChanged: (text) => widget.aboutMeTextNotifier.value = text,
        maxLines: 3,
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
        textDirection: TextDirection.ltr,
      ),
    );
  }
}