import 'package:flutter/material.dart';
import 'package:music_player_flutter/themes/dark_theme.dart';
import 'package:music_player_flutter/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkTheme;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData = _themeData == darkTheme ? lightTheme : darkTheme;
    notifyListeners();
  }
}
