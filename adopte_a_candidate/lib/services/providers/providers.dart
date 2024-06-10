import 'package:flutter/material.dart';

class ProfileState extends ChangeNotifier {
  String _aboutMeText = '';
  final List<String> _aboutMeTexts = [];
  final TextEditingController aboutMeController = TextEditingController();
  final List<String> _mainSkills = [];
  final List<String> _sideSkills = [];

  String get aboutMeText => _aboutMeText;
  List<String> get mainSkills => _mainSkills;
  List<String> get sideSkills => _sideSkills;

  List<String> get aboutMeTexts => _aboutMeTexts;

  void updateAboutMeText(String newText) {
    _aboutMeText = newText;
    notifyListeners();
  }

  void addAboutMeText(String newText) {
    _aboutMeTexts.clear();
    _aboutMeTexts.add(newText);
    notifyListeners();
  }


  void addMainSkill(String skill) {
    if (_mainSkills.length < 5 && !_mainSkills.contains(skill)) {
      _mainSkills.add(skill);
      notifyListeners();
    }
  }

  void removeMainSkill(String skill) {
    _mainSkills.remove(skill);
    notifyListeners();
  }

  void addSideSkill(String skill) {
    if (_sideSkills.length < 10 && !_sideSkills.contains(skill)) {
      _sideSkills.add(skill);
      notifyListeners();
    }
  }

  void removeSideSkill(String skill) {
    _sideSkills.remove(skill);
    notifyListeners();
  }
}