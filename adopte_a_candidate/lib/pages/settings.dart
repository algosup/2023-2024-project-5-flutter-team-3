import 'package:adopte_a_candidate/main.dart';
import 'package:adopte_a_candidate/widgets/buttons/text_buttons.dart';
import 'package:adopte_a_candidate/widgets/buttons/delete_button.dart';
import 'package:adopte_a_candidate/widgets/fields/localization_field.dart';
import 'package:adopte_a_candidate/widgets/fields/text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/lists/select_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

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
  String? _selectedLanguage;
  final List<String> _languages = ['English', 'French'];

  @override
  void initState() {
    super.initState();
    _setLanguage();
    _loadUserData();
  }

  Future<void> _setLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('language') ?? 'en';
    setState(() {
      _selectedLanguage = lang == 'en' ? 'English' : 'French';
    });
  }

  String getAbbreviation(String language) {
    return language == 'English' ? 'en' : 'fr';
  }

  Future<void> _loadUserData() async {
    // Simulate a delay to mimic a network request
    await Future.delayed(Duration.zero);
    setState(() {
      _controllerName.text = "john doe";
      _controllerEmail.text = "john.doe@super-mail.com";
      _controllerLocalization.text = 'Paris, France';
    });
  }

  @override
  void dispose() {
    _controllerName.dispose();
    _controllerEmail.dispose();
    _controllerLocalization.dispose();
    super.dispose();
  }

  Future<bool?> _getData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isCompany');
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
                    onPressed: () async {
                      bool? isCompany = await _getData();
                      if (isCompany == null) {
                        context.goNamed('log_in');
                      } else if (isCompany) {
                        context.goNamed('company_profile');
                      } else {
                        context.goNamed('job_seeker_profile');
                      }
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Text(
                    AppLocalizations.of(context)!.settingsTitle,
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
                title: AppLocalizations.of(context)!.name,
                hintText: AppLocalizations.of(context)!.enterName,
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
                isObscure: false,
                showToggle: false,
                isEmail: false,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _controllerEmail,
                title: AppLocalizations.of(context)!.email,
                hintText: AppLocalizations.of(context)!.enterEmail,
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
                isObscure: false,
                showToggle: false,
                isEmail: true,
              ),
              const SizedBox(height: 20),
              LocalizationField(
                controller: _controllerLocalization,
                title: AppLocalizations.of(context)!.localization,
                hintText: '',
                width: MediaQuery.of(context).size.width - 32,
                height: 108,
              ),
              const SizedBox(height: 20),
              SelectList(
                controller: _controllerLanguage,
                title: AppLocalizations.of(context)!.language,
                defaultItem: _selectedLanguage!,
                selectedItem: _selectedLanguage!,
                items: _languages,
                width: MediaQuery.of(context).size.width - 32,
                height: 40,
                onChanged: (String value) async {
                  setState(() {
                    _selectedLanguage = value;
                  });
                  String language = getAbbreviation(value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('language', language);

                  // Change the app's locale
                  MyApp.of(context).setLocale(Locale(language));
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: DeleteButton(
                  text: AppLocalizations.of(context)!.deleteAccount,
                  width: MediaQuery.of(context).size.width - 32,
                  height: 58,
                  textWidth: 18,
                  onPressed: () {
                    context.goNamed('home');
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
                          AppLocalizations.of(context)!.logout,
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
                  CustomTextButton(
                    text: AppLocalizations.of(context)!.termsOfService,
                    textWidth: 18,
                    pageName: 'term_of_use',
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}