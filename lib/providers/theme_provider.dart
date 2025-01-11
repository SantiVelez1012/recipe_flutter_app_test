import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeNotifier() {
    final brightness = PlatformDispatcher.instance.platformBrightness;
    if (brightness == Brightness.dark) {
      _themeData = ThemeData.dark();
    } else {
      _themeData = ThemeData.light();
    }
    notifyListeners();
  }

  void toggleDark() {
    _themeData = ThemeData.dark();
    notifyListeners();
  }

  void toggleLight() {
    _themeData = ThemeData.light();
    notifyListeners();
  }

  ThemeData get themeData => _themeData;
}
