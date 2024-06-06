// Flutter base packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// Widgets package
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/widgets/card/cards.dart';
import 'package:adopte_a_candidate/widgets/card/tags.dart';
import 'package:adopte_a_candidate/widgets/buttons/localization_button.dart';




// Swipe page, the user can swipe profile or job that he likes
class SwipePage extends StatefulWidget {
  const SwipePage({super.key});

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {

  // Initializing variables for the dragging effect (swipe)
  Offset _startDragOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  bool _isDragging = false;

  // detects the start of the swiping momentum
  void _onPanStart(DragStartDetails details) {
    _startDragOffset = details.localPosition;
    setState(() {
      _isDragging = true;
    });
  }

  // updates the location of the element swiped
  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _currentOffset = details.localPosition - _startDragOffset;
    });
  }

  // detects the end of the movement, sets the element to it's original place
  void _onPanEnd(DragEndDetails details) {
    setState(() {
      _isDragging = false;
      _currentOffset = Offset.zero;
    });
  }

  // When reaching this threshold, detects the widget as selected by the user (swipe -> yes)
  bool _isSelected() {
    return _currentOffset.dx != 0 && _currentOffset.dx > 150;
  }

  // When reaching this threshold, detects the widget as selected by the user (swipe -> no)
  bool _isRejected() {
    return _currentOffset.dx != 0 && _currentOffset.dx < -150;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // get the screen width size of the native device
    final offset = _currentOffset;
    final rotation = offset.dx / screenWidth * 0.8; // Adjust rotation factor
    final colorValue = (offset.dx.abs() / screenWidth).clamp(0.0, 1.0);
    final color = offset.dx < 0
        ? Color.lerp(Colors.white, Colors.red, colorValue)
        : Color.lerp(Colors.white, Colors.green, colorValue);
    // depending of the threshold and the offset set, change the color of the background either to red or green whether the user selects or rejects the offer



    // TODO if user == candidate, show this scaffold
    return Scaffold(
      backgroundColor: color, // set the background color either to white, red, or green depending on the state
      appBar: const Logo(), // displays the logo
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Creating the card box which contains the job offer, and is draggable by the user
              ConstrainedBox(
                constraints: const BoxConstraints(),
                child: GestureDetector(
                  onPanStart: _onPanStart,
                  onPanUpdate: _onPanUpdate,
                  onPanEnd: _onPanEnd,
                  child: Transform.translate(
                    offset: offset,
                    child: Transform.rotate(
                      angle: rotation,
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 80,
                          height: MediaQuery.of(context).size.height - 430,
                          decoration: BoxDecoration(
                            color: const Color(
                              0xffffd5c2,
                            ), // Set your desired background color here
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align content to the start
                              children: [
                                Center(
                                  // Title of the job offer
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
                                const CardLineHorizontal(), // adds an horizontal line to separate elements
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Text(
                                    //required JobDescription
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
                                const SizedBox(height: 5), // Adjust spacing as needed
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
                                    // Add more Tag widgets here as needed
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
                                    TagAppreciatedSkills(text: 'Empathy'),
                                    TagAppreciatedSkills(text: 'Mathematical basics')
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
                                Row(
                                  children: [
                                    const localizationButton(),
                                    Text('18110, Vierzon, FRANCE',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.josefinSans(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility( // add visibility to the button check and cross below, when the card is being dragged, hide the button.
                visible: !_isDragging,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: SvgPicture.asset('assets/images/close-circle.svg'),
                            ),
                            const CardLineVertical(),
                            GestureDetector(
                              onTap: (){},
                                child: SvgPicture.asset('assets/images/check-circle.svg')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentRoute: '/swipe',
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.goNamed('profile'); // Navigate to profile page
              break;
            case 1:
              // Already on the swipe page, no navigation needed
              break;
            case 2:
              context.goNamed('message'); // Navigate to messages page
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}


