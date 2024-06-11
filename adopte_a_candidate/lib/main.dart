import 'package:adopte_a_candidate/services/authentification/authentification_repository.dart';
import 'package:adopte_a_candidate/services/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firestore/firebase_options.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';
import 'package:adopte_a_candidate/widgets/loadings/loading_page.dart';

// Routes package
import 'package:adopte_a_candidate/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs;
  SharedPreferences.getInstance().then((value) => prefs = value);
  String locale = 'en';
  prefs.getString('language').then((value) {
    if (value != null) {
      locale = value;
    }
  });
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthentificationRepository()));
  runApp( ChangeNotifierProvider(create: (BuildContext context) { return ProfileState();},
  child: MyApp(locale: locale)));
}

class MyApp extends StatefulWidget {
  final String locale;

  MyApp({required this.locale});

  @override
  _MyAppState createState() => _MyAppState(localeLang: Locale(locale));

  static _MyAppState of(BuildContext context) => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState({this.localeLang});
  Locale localeLang;


  void setLocale(Locale value) {
    setState(() {
      localeLang = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      locale: localeLang,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Include the generated localization delegate
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
    );
  }
}

void initializeDataBase(void runApp) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
