import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.dark;

  changeLanguage(String newLanguage) {
    if (newLanguage == currentLanguage) {
      return;
    }

    currentLanguage = newLanguage;

    notifyListeners();
  }

  changeThemeMode(ThemeMode newThemeMode) {
    // print(currentThemeMode);/
    print(newThemeMode);

    if (newThemeMode == currentThemeMode) return;

    currentThemeMode = newThemeMode;

    notifyListeners();
  }

  getBackground() {
    return currentThemeMode == "Dark"
        ? "assets/images/DarkMainBackground.png"
        : "assets/images/main_background.png";
  }

  bool isDark() {
    return currentThemeMode == "Dark";
  }
}
