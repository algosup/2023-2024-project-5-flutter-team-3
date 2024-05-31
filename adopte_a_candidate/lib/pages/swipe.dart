import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adopte_a_candidate/widgets/navbar/navigation_bar.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adopte_a_candidate/widgets/card/cards.dart';
import 'package:adopte_a_candidate/widgets/card/tags.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({super.key});

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {

  Offset _startDragOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  bool _isDragging = false;

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
    setState(() {
      _isDragging = false;
      _currentOffset = Offset.zero;
    });
  }

  bool _isSelected() {
    return _currentOffset.dx != 0 && _currentOffset.dx > 150;
  }

  bool _isRejected() {
    return _currentOffset.dx != 0 && _currentOffset.dx < -150;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final offset = _currentOffset;
    final rotation = offset.dx / screenWidth * 0.8; // Adjust rotation factor
    final colorValue = (offset.dx.abs() / screenWidth).clamp(0.0, 1.0);
    final color = offset.dx < 0
        ? Color.lerp(Colors.white, Colors.red, colorValue)
        : Color.lerp(Colors.white, Colors.green, colorValue);


    return Scaffold(
      backgroundColor: color,
      appBar: const Logo(),
      body: LayoutBuilder(
        builder: (context, constraints) {

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                          height: MediaQuery.of(context).size.height - 380,
                          decoration: BoxDecoration(
                            color: const Color(
                              0xffffd5c2,
                            ), // Set your desired background color here
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align content to the start
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
                                const SizedBox(height: 10),
                                const CardLine(),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20.0),
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
                                const CardLine(),
                                const SizedBox(height: 10), // Adjust spacing as needed
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
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
                                const SizedBox(height: 10),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TagRequiredSkills(text: 'Problem Solving'),
                                    TagRequiredSkills(text: 'Humor'),
                                    TagRequiredSkills(text: 'Respect'),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const CardLine(),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
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
                                const SizedBox(height: 10),
                                const CardLine(),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.location_on),
                                    ),
                                    const SizedBox(width: 20),
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
