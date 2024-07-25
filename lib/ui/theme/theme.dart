
import 'package:flutter/material.dart';

const primaryColor = Color(0xff0c73fe);
final themeData = ThemeData(
  dividerTheme: DividerThemeData(
    color: Colors.grey.withOpacity(0.4),
  ),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: const Color.fromARGB(255, 241, 241, 241),
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: Colors.black
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 20,
      color: Colors.black,
    )
  )
);

// const primaryDark = Color.fromARGB(255, 42, 45, 48);
// final themeDataDark = ThemeData(
//   primaryColor: primaryColor,
//   scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
//   colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
//   useMaterial3: true,
//   textTheme: const TextTheme(
//     titleMedium: TextStyle(
//       fontSize: 22,
//       color: Colors.white,
//       fontWeight: FontWeight.w600,
//     ),
//     bodySmall: TextStyle(
//       fontSize: 16,
//       color: Colors.white
//     ),
//     bodyMedium: TextStyle(
//       fontSize: 18,
//       color: Colors.white,
//     ),
//     bodyLarge: TextStyle(
//       fontSize: 20,
//       color: Colors.white,
//     )
//   )
// );
