import 'package:adopte_a_candidate/widgets/lists/job_offer_list.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

// Company profile page
class CompanyProfilePage extends StatelessWidget {
  const CompanyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const Logo(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // button leading to the setting page
                IconButton(
                  onPressed: () {
                    debugPrint('Settings button pressed');
                    context.goNamed('settings');
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.myOfferTitle,
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            JobOfferList(),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                context.goNamed('new_job_offer');
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  border: Border.all(
                      color: const Color(0xffffd5c2),
                      style: BorderStyle.solid,
                      width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        AppLocalizations.of(context)!.addOffer,
                        style: GoogleFonts.josefinSans(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFFF28F3B),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/company_profile',
        onItemTapped: (index) {
          switch (index) {
            case 0:
              // Already on the company profile page
              break;
            case 1:
              context.goNamed('company_swipe');
              break;
            case 2:
              context.goNamed('company_message_lobby'); // Navigate to messages page
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
