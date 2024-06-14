// Flutter base packages
import 'package:adopte_a_candidate/widgets/cards/tag.dart';
import 'package:adopte_a_candidate/widgets/lists/job_seeker_message_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

// This is the message page, the user will see his messages and click on conversation he wants to go to.
class JobSeekerMessageLobby extends StatelessWidget {
  const JobSeekerMessageLobby({super.key});

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
                      Icons.business_center_rounded,
                      color: Color(0xFFFFD5C2),
                      size: 50,
                    ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            JobSeekerMessageList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/job_seeker_message',
        // Set the current route for MessagePage
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('job_seeker_profile'); // Navigate to profile page
              break;
            case 1:
              context.goNamed('job_seeker_swipe'); // Navigate to swipe page
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
