// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/card/cards.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import '../widgets/logo/logo.dart';
import '../widgets/navbar/navigation_bar.dart';
import '../widgets/buttons/modifier_button.dart';


// Profile Page, the user will be able to see his profile and modify his information.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerAboutMe = TextEditingController();
    return Scaffold(
      appBar: const Logo(), // Display the logo in the AppBar
      body: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                // About Me text field, the user can make a small description about himself
                  controller: controllerAboutMe,
                  title: 'Describe yourself',
                  hinttext: 'Write a short description about yourself',
                  isObscure: false,
                  isEmail: false,
                  width: MediaQuery.of(context).size.width - 50,
                  heigth: 125,
                  showToggle: false),
            ],
          ),
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
                    side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          const modifierButton(), // Displays the pen button, that will allow to change the information into the container above when pressed
          const SizedBox(height: 10),
          const CardLineHorizontal(), // Displays an horizontal line to comply with design
        ],
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

