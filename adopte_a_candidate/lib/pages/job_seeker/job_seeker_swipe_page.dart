// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/cards/card.dart';
import 'package:adopte_a_candidate/widgets/cards/tag.dart';
import 'package:adopte_a_candidate/widgets/buttons/localization_button.dart';

import '../../widgets/buttons/swipe_page_buttons.dart';

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
  bool _showMatch = false; // Variable to control the visibility of the match card

  List<Widget> _cards = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _cards = [
      buildNursePractitionerCard(),
      buildSoftwareDeveloperCard(),
      buildJobOfferCard1(),
      buildJobOfferCard2(),
      buildJobOfferCard3()
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
    if (_isSelected()) {
      _acceptOffer();
    } else if (_isRejected()) {
      _denyOffer();
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
    setState(() {
      _showMatch = true; // Show the match card when an offer is accepted
      _currentIndex = (_currentIndex + 1) % _cards.length;
      _isDragging = false;
      _currentOffset = Offset.zero;
    });
  }

  void _denyOffer() {
    print('Offer denied');
    setState(() {
      _currentIndex = (_currentIndex + 1) % _cards.length;
      _isDragging = false;
      _currentOffset = Offset.zero;
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
          return Stack(
            children: [
              Column(
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
              ),
              if (_showMatch) ...[
                Positioned.fill(
                  child: Container(
                    color: Colors.black54,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MatchJobSeeker(
                          onDismiss: () {
                            setState(() {
                              _showMatch = false;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/job_seeker_swipe',
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('job_seeker_profile');
              break;
            case 1:
            // Already on the swipe page, no navigation needed
              break;
            case 2:
              context.goNamed('job_seeker_message');
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}


class MatchJobSeeker extends StatelessWidget {
  final VoidCallback onDismiss;

  const MatchJobSeeker({
    required this.onDismiss,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: const Color(0xFFFFD5C2),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text(
              'Congratulations!',
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'You have a match!',
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'You can now wait for the company to contact you.',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onDismiss();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
              ),
              child: Text(
                'Back to Swipe',
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}