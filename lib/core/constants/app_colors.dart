import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF6C63FF);
  static const secondary = Color(0xFF4A44B7);
  static const accent = Color(0xFFF9A826);
  static const dark = Color(0xFF1E1E2C);
  static const light = Color(0xFFF5F5F7);
  static const success = Color(0xFF4BB543);
  static const danger = Color(0xFFFC100D);
  static const warning = Color(0xFFFFCC00);

  static Color getCounterColor(int value) {
    if (value < 0) return danger;
    if (value == 0) return dark;
    if (value < 10) return primary;
    if (value < 20) return secondary;
    return success;
  }
}