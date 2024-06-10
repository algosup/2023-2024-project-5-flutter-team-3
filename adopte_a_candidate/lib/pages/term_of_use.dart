// Flutter base packages
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Custom Widgets
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';

// This is the message page, the user will see his messages and click on conversation he wants to go to.
class TermOfUsePage extends StatelessWidget {
  const TermOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Term of Usage'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.goNamed('settings');
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
              'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. '
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
              'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/term_of_use', // Set the current route for TermOfUsePage
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('profile'); // Navigate to profile page
              break;
            case 1:
              context.goNamed('swipe'); // Navigate to swipe page
              break;
            case 2:
              // Already on the term of use page, no navigation needed
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
