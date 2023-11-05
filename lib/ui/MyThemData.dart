import 'package:flutter/material.dart';

class MyThemData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color darkPrimary = Color(0xff141A2E);
  static Color darkSecondry = Color(0xfffacc1D);
  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black)),
      cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32)),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xffB7935F),
        primary: Color(0xffB7935F),
        secondary: Color(0xffB7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: Colors.white,
      ),
      useMaterial3: true,
      dividerColor: lightPrimary,
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white)),
      cardTheme: CardTheme(
          color: darkPrimary,
          surfaceTintColor: Colors.transparent,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: darkSecondry,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32)),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 28)),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkSecondry,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        background: darkPrimary,
      ),
      useMaterial3: true,
      dividerColor: darkSecondry,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary));
}
