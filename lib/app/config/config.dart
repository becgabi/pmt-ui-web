import 'package:flutter/material.dart';

class Config {
  /// UI
  static Color get backgroundColor => const Color(0xFF212332);
  static Color get primaryColor => const Color(0xFF2697FF);
  static Color get secondaryColor => const Color(0xFF2A2D3E);

  static double get defaultPadding => 16.0;

  /// API
  static String get backendUrl => "http://localhost:9001";
}
