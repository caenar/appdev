import 'package:flutter/material.dart';

// foundational settings
class AppTheme {
  static const Color highlightColor = Color(0xFF2564D8); // that damn blue

  // uh, light theme, was planning to do dark theme, but eh
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,

    // just four styles to set, don't need to use much
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
    ),

    colorScheme: ColorScheme.fromSwatch().copyWith(
      tertiary: highlightColor,
    ),
  );

  
}
