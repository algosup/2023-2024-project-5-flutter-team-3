import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  String get name;

  String get email;

  String get password;

  String get passwordNotMatch;

  String get enterName;

  String get enterEmail;

  String get enterPassword;

  String get confirmPassword;

  String get isCandidate;

  String get isCompany;

  String get subscribe;

  String get alreadyHaveAccount;

  String get forgotPassword;

  String get login;

  String get noAccount;

  String get addNewOffer;

  String get offerTitle;

  String get enterOfferTitle;

  String get offerDescription;

  String get enterOfferDescription;

  String get offerLocation;

  String get enterOfferLocation;

  String get offerMainTag;

  String get enterOfferMainTag;

  String get offerSideTag;

  String get enterOfferSideTag;

  String get addOffer;

  String get editOfferTitle;

  String get saveOffer;

  String get myOfferTitle;

  String get describeYourself;

  String get enterDescription;

  String get addYourMainSkills;

  String get enterMainSkills;

  String get errorMainSkills;

  String get addYourSideSkills;

  String get enterSideSkills;

  String get errorSideSkills;

  String get swipeExample1OfferTitle;

  String get swipeExample1OfferDescription;

  String get swipeRequiredSkillsTitle;

  String get swipeExample1OfferMainTag0;

  String get swipeExample1OfferMainTag1;

  String get swipeExample1OfferMainTag2;

  String get swipeExample1OfferMainTag3;

  String get swipeExample1OfferMainTag4;

  String get swipeAppreciatedSkillsTitle;

  String get swipeExample1OfferSideTag0;

  String get swipeExample1OfferSideTag1;

  String get swipeExample1OfferSideTag2;

  String get swipeExample1OfferSideTag3;

  String get swipeExample1OfferLocation;

  String get swipeExample2OfferTitle;

  String get swipeExample2OfferDescription;

  String get swipeExample2OfferMainTag0;

  String get swipeExample2OfferMainTag1;

  String get swipeExample2OfferMainTag2;

  String get swipeExample2OfferMainTag3;

  String get swipeExample2OfferSideTag0;

  String get swipeExample2OfferSideTag1;

  String get swipeExample2OfferSideTag2;

  String get swipeExample2OfferLocation;

  String get settingsTitle;

  String get localization;

  String get language;

  String get deleteAccount;

  String get logout;

  String get termsOfService;

  String get swipeExample1SeekerDescription;

  String get swipeExample1SeekerMainTag0;

  String get swipeExample1SeekerMainTag1;

  String get swipeExample1SeekerMainTag2;

  String get swipeExample1SeekerMainTag3;

  String get swipeExample1SeekerSideTag0;

  String get swipeExample1SeekerSideTag1;

  String get swipeExample1SeekerSideTag2;

  String get swipeExample1SeekerSideTag3;

  String get swipeExample1SeekerSideTag4;

  String get swipeExample2SeekerDescription;

  String get swipeExample2SeekerMainTag0;

  String get swipeExample2SeekerMainTag1;

  String get swipeExample2SeekerMainTag2;

  String get swipeExample2SeekerMainTag3;

  String get swipeExample2SeekerSideTag0;

  String get swipeExample2SeekerSideTag1;

  String get swipeExample2SeekerSideTag2;

  String get swipeMainSkillsTitle;

  String get swipeSideSkillsTitle;

  String get passwordNotValid;

  String get emailNotValid;

  String get emailAlreadyInUse;

  String get loading;

  String get offerName0;

  String get offerName1;

  String get offerName2;

  String get offerName3;

  String get offerName4;

  String get offerName5;

  String get offerName6;

  String get offerName7;

  String get offerName8;

  String get offerName9;

  String get offerName10;

  String get offerName11;

  String get offerName12;

  String get offerName13;

  String get exampleMessage0;

  String get exampleMessage1;

  String get exampleMessage2;

  String get exampleMessage3;

  String get exampleMessage4;

  String get exampleMessage5;

  String get exampleMessage6;

  String get exampleMessage7;

  String get exampleMessage8;

  String get exampleMessage9;

  String get exampleMessage10;

  String get exampleMessage11;

  String get exampleMessage12;

  String get exampleMessage13;

  String get sort0;

  String get sort1;

  String get sort2;

  String get sort3;

  String get sortTitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
          'an issue with the localizations generation tool. Please file an issue '
          'on GitHub with a reproducible sample app and the gen-l10n configuration '
          'that was used.'
  );
}
