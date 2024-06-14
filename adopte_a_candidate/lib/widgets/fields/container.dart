import 'package:flutter/material.dart';

import 'package:adopte_a_candidate/widgets/cards/tag.dart';

// Main tags container widget
class MainTagsContainer extends StatelessWidget {
  final List<String> mainSkills;
  final bool isEditMode;
  final Function(String) removeSkill;

  const MainTagsContainer({
    Key? key,
    required this.mainSkills,
    required this.isEditMode,
    required this.removeSkill,
  }) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: mainSkills.map((skill) {
                return isEditMode
                    ? Stack(
                        children: [
                          TagProfileSkills(text: skill),
                          Positioned(
                            top: -5,
                            right: -5,
                            child: GestureDetector(
                              onTap: () => removeSkill(skill),
                              child: const Icon(
                                Icons.close,
                                size: 16,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      )
                    : TagProfileSkills(text: skill);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

// Side skills container widget
class SideSkillsContainer extends StatelessWidget {
  final List<String> sideSkills;
  final bool isEditMode;
  final Function(String) removeSkill;

  const SideSkillsContainer({
    Key? key,
    required this.sideSkills,
    required this.isEditMode,
    required this.removeSkill,
  }) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: sideSkills.map((skill) {
                return isEditMode
                    ? Stack(
                        children: [
                          TagProfileSkills(text: skill),
                          Positioned(
                            top: -5,
                            right: -5,
                            child: GestureDetector(
                              onTap: () => removeSkill(skill),
                              child: const Icon(
                                Icons.close,
                                size: 16,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      )
                    : TagProfileSkills(text: skill);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
