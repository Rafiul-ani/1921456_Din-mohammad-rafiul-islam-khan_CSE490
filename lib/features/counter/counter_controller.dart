import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class CounterController extends ChangeNotifier {
  int _count = 0;
  ThemeMode _themeMode = ThemeMode.light;

  int get count => _count;
  ThemeMode get themeMode => _themeMode;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    notifyListeners();
  }

  Color get counterColor => AppColors.getCounterColor(_count);

  String get message {
    if (_count < 0) return "Negative territory!";
    if (_count == 0) return "Let's get counting!";
    if (_count < 5) return "Off to a good start!";
    if (_count < 10) return "Keep it up!";
    if (_count < 15) return "You're on a roll!";
    if (_count < 20) return "Almost there!";
    return "You're a counting master!";
  }
}