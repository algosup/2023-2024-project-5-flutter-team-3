// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/cards/card.dart';

import '../../widgets/buttons/swipe_page_buttons.dart';
import 'job_seeker_match.dart';

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
  bool _showMatch =
      false; // Variable to control the visibility of the match card

  List<Widget> _cards = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _cards = [
      buildNursePractitionerCard(),
      buildSoftwareDeveloperCard(),
      buildTechLeadCard(),
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
