// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/cards/card.dart';
import 'package:adopte_a_candidate/widgets/cards/tag.dart';
import 'package:adopte_a_candidate/widgets/buttons/localization_button.dart';

import '../widgets/buttons/swipe_page_buttons.dart';

// Swipe page, the user can swipe profile or job that he likes
// Swipe page, the user can swipe profile or job that he likes
class SwipePage extends StatefulWidget {
  const SwipePage({Key? key});

  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  Offset _startDragOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  bool _isDragging = false;

  List<Widget> _cards = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _cards = [
      buildNursePractitionerCard(),
      buildSoftwareDeveloperCard(),
    ];
  }

  void _onPanStart(DragStartDetails details) {
    _startDragOffset = details.localPosition;
    setState(() {
      _isDragging = true;
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _currentOffset = details.localPosition - _startDragOffset;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (_isSelected() || _isRejected()) {
      setState(() {
        _isDragging = false;
        _currentOffset = Offset.zero;
        _currentIndex = (_currentIndex + 1) % _cards.length;
      });
    } else {
      setState(() {
        _isDragging = false;
        _currentOffset = Offset.zero;
      });
    }
  }

  bool _isSelected() {
    return _currentOffset.dx != 0 && _currentOffset.dx > 150;
  }

  bool _isRejected() {
    return _currentOffset.dx != 0 && _currentOffset.dx < -150;
  }

  void _acceptOffer() {
    print('Offer accepted');
    // Implement the logic for accepting an offer
    setState(() {
      _currentIndex = (_currentIndex + 1) % _cards.length;
    });
  }

  void _denyOffer() {
    print('Offer denied');
    // Implement the logic for denying an offer
    setState(() {
      _currentIndex = (_currentIndex + 1) % _cards.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final offset = _currentOffset;
    final rotation = offset.dx / screenWidth * 0.8;
    final colorValue = (offset.dx.abs() / screenWidth).clamp(0.0, 1.0);
    final color = offset.dx < 0
        ? Color.lerp(Colors.white, Colors.red, colorValue)
        : Color.lerp(Colors.white, Colors.green, colorValue);

    return Scaffold(
      backgroundColor: color,
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  _currentIndex < _cards.length
                      ? Transform.translate(
                    offset: offset,
                    child: Transform.rotate(
                      angle: rotation,
                      child: GestureDetector(
                        onPanStart: _onPanStart,
                        onPanUpdate: _onPanUpdate,
                        onPanEnd: _onPanEnd,
                        child: _cards[_currentIndex],
                      ),
                    ),
                  )
                      : Container(),
                ],
              ),
              buttonsSwipePage(
                isDragging: _isDragging,
                onAccept: _acceptOffer,
                onDeny: _denyOffer,
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/swipe',
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('profile');
              break;
            case 1:
            // Already on the swipe page, no navigation needed
              break;
            case 2:
              context.goNamed('message');
              break;
            default:
              break;
          }
        },
      ),
    );
  }

  Widget buildNursePractitionerCard() {
    return Builder(
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Nurse Practitioner',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Join our team as a Nurse Practitioner (NP)! You’ll provide primary and specialty healthcare, diagnose and treat medical conditions, prescribe medications, perform procedures, and educate patients. Work autonomously or alongside physicians in a dynamic and supportive environment.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const CardLineHorizontal(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Required Skills:',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Adaptability'),
                      TagRequiredSkills(text: 'Time Management'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Problem Solving'),
                      TagRequiredSkills(text: 'Humor'),
                      TagRequiredSkills(text: 'Respect'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Appreciate Skills:',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(text: 'Compassion'),
                      TagAppreciatedSkills(text: 'Patience'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(text: 'Networking'),
                      TagAppreciatedSkills(text: 'Empathy'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 2),
                  const Row(
                    children: [
                      localizationButton(),
                      Text(
                        '18100, Vierzon, France',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildSoftwareDeveloperCard() {
    return Builder(
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: const Color(0xffffd5c2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Software Developer',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Join our tech team as a Software Developer! You’ll design, build, and maintain efficient, reusable, and reliable code. Collaborate with cross-functional teams, troubleshoot, and optimize software solutions. Contribute to all phases of the development lifecycle in a fast-paced and dynamic environment.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const CardLineHorizontal(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Required Skills:',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Programming'),
                      TagRequiredSkills(text: 'Problem Solving'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: 'Teamwork'),
                      TagRequiredSkills(text: 'Communication'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Appreciated Skills:',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(text: 'Creativity'),
                      TagAppreciatedSkills(text: 'Attention to Detail'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(text: 'Networking'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 2),
                  const Row(
                    children: [
                      localizationButton(),
                      Text(
                        '10100, Techville, USA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}