import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _mode;
  ThemeMode get mode => _mode;
  ThemeProvider({ThemeMode mode = ThemeMode.light}) : _mode = mode;

  void setLightMode() {
    _mode = ThemeMode.light;
    notifyListeners();
  }

  void setDarkMode() {
    _mode = ThemeMode.dark;
    notifyListeners();
  }
}
