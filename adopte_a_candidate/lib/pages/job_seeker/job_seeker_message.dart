// Flutter base packages
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';

// This is the message page, the user will see his messages and click on conversation he wants to go to.
class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: const Text('Messages'),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute:
            '/job_seeker_message', // Set the current route for MessagePage
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
