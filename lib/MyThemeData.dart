import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xFFB7935F);
  static Color darkPrimary = Color(0xFF141A2E);
  static Color darkSecondary = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          )),
      cardColor: Colors.white,
      cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(size: 32),
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 28, color: Colors.black)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xFFC9B497),
          onSecondary: Colors.black,
          background: Colors.white),
      useMaterial3: true);
  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary),
      textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
      cardColor: Colors.white,
      cardTheme: CardTheme(
          surfaceTintColor: Colors.transparent,
          color: darkPrimary,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: darkSecondary,
          selectedIconTheme: IconThemeData(size: 32),
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 28, color: Colors.white)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimary,
          primary: darkPrimary,
          onPrimary: Colors.white,
          secondary: darkSecondary,
          onSecondary: Colors.black,
          background: darkPrimary),
      useMaterial3: true);
}
