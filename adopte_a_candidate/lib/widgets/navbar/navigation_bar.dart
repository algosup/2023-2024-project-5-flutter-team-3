import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatefulWidget {
  final String currentRoute;
  final void Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.currentRoute,
    required this.onItemTapped,
  });

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = _getSelectedIndex(widget.currentRoute);
  }

  int _getSelectedIndex(String routeName) {
    switch (routeName) {
      case '/profile':
        return 0;
      case '/swipe':
        return 1;
      case '/message':
        return 2;
      default:
        return 0; // Default to the first index if not matched
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        widget.onItemTapped(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/profile.svg',
            height: 50,
            color: _selectedIndex == 0 ? Colors.black : const Color(0xffffd5c2),
          ),
          label: 'profile',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/swipe.svg',
            height: 50,
            color: _selectedIndex == 1 ? Colors.black : const Color(0xffffd5c2),
          ),
          label: 'swipe',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/messages.svg',
            height: 50,
            color: _selectedIndex == 2 ? Colors.black : const Color(0xffffd5c2),
          ),
          label: 'messages',
        ),
      ],
    );
  }
}
