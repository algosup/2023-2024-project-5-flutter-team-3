import 'package:flutter/material.dart';

class ProfileState extends ChangeNotifier {
  String _aboutMeText = '';
  final List<String> _aboutMeTexts = [];
  final TextEditingController aboutMeController = TextEditingController();

  String get aboutMeText => _aboutMeText;
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
}