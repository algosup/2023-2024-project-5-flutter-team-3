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
import 'package:adopte_a_candidate/pages/company/company_match.dart';
import '../../widgets/buttons/swipe_page_buttons.dart';

// Swipe page, the user can swipe profile or job that he likes
// Swipe page, the user can swipe profile or job that he likes
class CompanySwipePage extends StatefulWidget {
  const CompanySwipePage({Key? key});

  @override
  _CompanySwipePageState createState() => _CompanySwipePageState();
}

class _CompanySwipePageState extends State<CompanySwipePage> {
  Offset _startDragOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  bool _isDragging = false;
  bool _showMatch = false; //

  List<Widget> _cards = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _cards = [
      buildNursePractitionerProfileCard(),
      buildSoftwareDeveloperProfileCard(),
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
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: _currentIndex < _cards.length
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
          if (_showMatch)
            Positioned.fill(
              child: Container(
                color: Colors.black54,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MatchCompany(
                      onDismiss: () {
                        setState(() {
                          _showMatch = false;
                        });
                      },
                      onNavigateToMessages: () {
                        context.goNamed('company_message');
                      },
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/job_seeker_swipe',
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('company_profile');
              break;
            case 1:
              // Already on the swipe page, no navigation needed
              break;
            case 2:
              context.goNamed('company_message_lobby');
              break;
            default:
              break;
          }
        },
      ),
    );
  }

  Widget buildNursePractitionerProfileCard() {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      AppLocalizations.of(context)!
                          .swipeExample1SeekerDescription,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
                      AppLocalizations.of(context)!.swipeMainSkillsTitle,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerMainTag0),
                      TagRequiredSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerMainTag1),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerMainTag2),
                      TagRequiredSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerMainTag3),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerMainTag3),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      AppLocalizations.of(context)!.swipeSideSkillsTitle,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerSideTag0),
                      TagAppreciatedSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerSideTag1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerSideTag2),
                      TagAppreciatedSkills(
                          text: AppLocalizations.of(context)!
                              .swipeExample1SeekerSideTag3),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const localizationButton(),
                      Text(
                        AppLocalizations.of(context)!
                            .swipeExample1OfferLocation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
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

  Widget buildSoftwareDeveloperProfileCard() {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(

                      AppLocalizations.of(context)!.swipeExample2SeekerDescription,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
                      AppLocalizations.of(context)!.swipeMainSkillsTitle,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       TagRequiredSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerMainTag0),
                      TagRequiredSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerMainTag1),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagRequiredSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerMainTag2),
                      TagRequiredSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerMainTag3),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      AppLocalizations.of(context)!.swipeSideSkillsTitle,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerSideTag0),
                      TagAppreciatedSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerSideTag1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TagAppreciatedSkills(text: AppLocalizations.of(context)!.swipeExample2SeekerSideTag2),

                    ],
                  ),
                  const SizedBox(height: 5),
                  const CardLineHorizontal(),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const localizationButton(),
                      Text(
                        AppLocalizations.of(context)!
                            .swipeExample2OfferLocation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
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
