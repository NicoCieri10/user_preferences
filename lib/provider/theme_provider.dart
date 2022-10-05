import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider({
    required bool isDarkmode,
  }) : currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();

  ThemeData currentTheme;

  void setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  void setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
