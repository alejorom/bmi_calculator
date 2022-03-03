import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryL = Colors.green;

  // Definición del tema claro.
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.black,

    // Tema del AppBar para todos los screens.
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryL,
      elevation: 10,
    ),

    // Tema de los TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primaryL,
      ),
    ),

    // Tema de los ActionButton flotantes
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryL,
      elevation: 5,
    ),

    // Tema para los ElevatedButtons.
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryL,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),

    scaffoldBackgroundColor: Colors.white,
  );

  static const Color primaryD = Color(0xFF0A0E21);

  // Definición del tema oscuro
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,

    // Tema del AppBar para todos los screens.
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryD,
      elevation: 10,
    ),

    // Tema de los TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primaryD,
      ),
    ),

    // Tema de los ActionButton flotantes
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.purple,
      elevation: 5,
    ),

    // Tema para los ElevatedButtons.
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryD,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),

    scaffoldBackgroundColor: primaryD,
  );
}
