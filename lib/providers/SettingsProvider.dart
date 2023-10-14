import 'package:flutter/material.dart';

// subject - observable - publisher
// data holder
class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) {
      return;
    }
    currentTheme = newTheme; // data changed
    notifyListeners(); // notify every object
    // that observes the current theme
  }
  String getradio() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/radio_dark.png'
        : 'assets/images/radio.png';
  }

  String getMainBackground() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }
  String getSebhaBody() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/body_sebha_dark.png'
        : 'assets/images/body_sebha_logo.png';
  }
  String getSebhaHead() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/head_sebha_dark.png'
        : 'assets/images/head_sebha_logo.png';
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  void changeLocale(String newLocale) {
    if (newLocale == currentLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }
}
