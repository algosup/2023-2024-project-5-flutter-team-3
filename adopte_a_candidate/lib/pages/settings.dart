import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/delete_button.dart';
import 'package:adopte_a_candidate/widgets/fields/localization_field.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:adopte_a_candidate/widgets/lists/select_list.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerLocalization = TextEditingController();
  final TextEditingController _controllerLanguage = TextEditingController();
  String _selectedLanguage = 'English'; // Default selected language

  final List<String> _languages = [
    'English',
    'French',
  ]; // Add more languages as needed

  @override
  void dispose() {
    _controllerName.dispose();
    _controllerEmail.dispose();
    _controllerLocalization.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      context.goNamed('profile');
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Text(
                    'SETTINGS',
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _controllerName,
                title: 'Name:',
                hintText: 'Enter your name',
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
                isObscure: false,
                showToggle: false,
                isEmail: false,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _controllerEmail,
                title: 'Email:',
                hintText: 'Enter your email',
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
                isObscure: false,
                showToggle: false,
                isEmail: true,
              ),
              const SizedBox(height: 20),
              LocalizationField(
                controller: _controllerLocalization,
                title: 'Localization:',
                hintText: '',
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
              ),
              const SizedBox(height: 20),
              SelectList(
                controller: _controllerLanguage,
                title: 'Language:',
                defaultItem: _selectedLanguage,
                selectedItem: _selectedLanguage,
                items: _languages,
                width: MediaQuery.of(context).size.width - 32,
                height: 40,
                onChanged: (String value) {
                  setState(() {
                    _selectedLanguage = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: DeleteButton(
                  text: 'Delete Account',
                  width: MediaQuery.of(context).size.width - 32,
                  height: 58,
                  textWidth: 18,
                  onPressed: () {
                    context.goNamed('delete_account');
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      context.goNamed('log_in'); // Navigate to terms page
                    },
                    child: Row(
                      children: [
                        Text(
                          'Log Out ',
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  const CustomTextButton(
                    text: 'Terms of Service',
                    textWidth: 18,
                    pageName: 'terms',
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildCustomBottomNavBar(context),
    );
  }

  Widget buildCustomBottomNavBar(BuildContext context) {
    return CustomBottomNavBar(
      currentRoute: '/settings', // Set the current route for SettingsPage
      onItemTapped: (index) {
        switch (index) {
          case 0:
            context.goNamed('profile'); // Navigate to profile page
            break;
          case 1:
            context.goNamed('swipe'); // Navigate to swipe page
            break;
          case 2:
            context.goNamed('message'); // Navigate to message page
            break;
          default:
            break;
        }
      },
    );
  }
}
