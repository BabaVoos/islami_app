import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String defaultLanguage = 'ar';

  void changeThemeMode(ThemeMode themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
  }

  void changeLanguage(String language) {
    defaultLanguage = language;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  String changeBackground() {
    if (isDark()) {
      notifyListeners();
      return 'assets/images/background_dark.png';
    } else {
      notifyListeners();
      return 'assets/images/light-background.png';
    }
  }

  String changeSplashBackground() {
    if (isDark()) {
      notifyListeners();
      return 'assets/images/splash_background_dark.png';
    } else {
      notifyListeners();
      return 'assets/images/splash_background_light.png';
    }
  }

  String changeSplashLogo() {
    if (isDark()) {
      notifyListeners();
      return 'assets/images/logo_dark.png';
    } else {
      notifyListeners();
      return 'assets/images/logo_light.png';
    }
  }

  String changeSplashTitle() {
    if (isDark()) {
      notifyListeners();
      return 'assets/images/title_dark.png';
    } else {
      notifyListeners();
      return 'assets/images/title_light.png';
    }
  }

  List<String> changeSebha() {
    if (isDark()) {
      notifyListeners();
      return ['assets/images/sebha_body_dark.png','assets/images/sebha_head_dark.png'];
    } else {
      notifyListeners();
      return ['assets/images/sebha_body.png','assets/images/sebha_head.png'];
    }
  }
}
