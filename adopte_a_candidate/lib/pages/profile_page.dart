import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/logo/logo.dart';
import '../widgets/navbar/navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: Text('profile page'),
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
              context.goNamed('swipe');// Example navigation to the swipe page
              break;
            case 2:
            // Logic for messages page
              context.goNamed('message');// Example navigation to the messages page
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
