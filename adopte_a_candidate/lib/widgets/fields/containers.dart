import 'package:adopte_a_candidate/widgets/buttons/modifier_button.dart';
import 'package:flutter/material.dart';

import '../card/tags.dart';

// Main tags container widget
class MainTagsContainer extends StatelessWidget {
  const MainTagsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      height: 100,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Wrap(children: [
                  TagRequiredSkills(
                    text: 'Adaptability',
                  ),
                  TagRequiredSkills(
                    text: 'Time Management',
                  ),
                  TagRequiredSkills(
                    text: 'Humor',
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TagRequiredSkills(
                  text: 'Problem Solving',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Side skills container widget
class SideSkillsContainer extends StatelessWidget {
  const SideSkillsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      height: 250,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TagRequiredSkills(
                  text: 'Rugby',
                ),
                TagRequiredSkills(
                  text: 'Books',
                ),
                TagRequiredSkills(
                  text: 'Networking',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TagRequiredSkills(
                  text: 'Patience',
                ),
              ],
            ),
          ),

        ],

      ),
    );
  }
}
