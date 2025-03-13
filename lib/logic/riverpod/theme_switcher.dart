// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:random_user_generator/logic/config/theme/theme.dart';

// final themeProvider = ChangeNotifierProvider<ThemeNotifier>((ref) {
//   return ThemeNotifier();
// });

// class ThemeNotifier extends ChangeNotifier {

//   ThemeData _themeData = lightMode;
//   ThemeData get themeData => _themeData;

//   void toggleTheme() {
//     _themeData = _themeData == lightMode ? darkMode : lightMode;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:random_user_generator/logic/config/theme/theme.dart';

final themeProvider = ChangeNotifierProvider<ThemeNotifier>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends ChangeNotifier {
  late Box _box;
  ThemeData _themeData = lightMode;
  
  ThemeData get themeData => _themeData;

  ThemeNotifier() {
    _init();
  }

  void _init() async {
    _box = Hive.box('AppTheme');
    final isDark = _box.get('isDarkMode', defaultValue: false) as bool;
    _themeData = isDark ? darkMode : lightMode;
    notifyListeners();
  }

  void toggleTheme() {
    final isDark = _themeData == darkMode;
    _themeData = isDark ? lightMode : darkMode;
    _box.put('isDarkMode', _themeData == darkMode);
    notifyListeners();
  }
}