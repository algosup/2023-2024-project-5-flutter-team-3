// Flutter base packages
import 'package:adopte_a_candidate/widgets/cards/tag.dart';
import 'package:adopte_a_candidate/widgets/lists/company_message_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

// This is the message page, the user will see his messages and click on conversation he wants to go to.
class CompanyMessageLobbyPage extends StatelessWidget {
  const CompanyMessageLobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      color: Color(0xFFFFD5C2),
                      size: 50,
                    ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                border: Border.all(
                    color: const Color(0xffffd5c2),
                    style: BorderStyle.solid,
                    width: 2.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          AppLocalizations.of(context)!.sortTitle,
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                     const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.filter_alt,
                          color: Color(0xFFFFD5C2),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Tag(text: AppLocalizations.of(context)!.sort0),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Tag(text: AppLocalizations.of(context)!.sort1),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Tag(text: AppLocalizations.of(context)!.sort2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Tag(text: AppLocalizations.of(context)!.sort3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CompanyMessageList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/job_seeker_message',
        // Set the current route for MessagePage
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('company_profile'); // Navigate to profile page
              break;
            case 1:
              context.goNamed('company_swipe'); // Navigate to swipe page
              break;
            case 2:
              // Already on the message page, no navigation needed
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
