import 'package:flutter/material.dart';

class ApplicationThemeManeger {
  static const Color primarycolor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);

  static ThemeData lighttheme = ThemeData(
      primaryColorLight: primarycolor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: "El Messiri",
            color: Colors.black,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primarycolor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF707070),
          selectedLabelStyle: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 17,
            fontWeight: FontWeight.normal,
          ),
          selectedIconTheme: IconThemeData(
            color: Color(0xFF707070),
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        bodyLarge: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        bodyMedium: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black),
        bodySmall: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black),
      ));
  static ThemeData darktheme = ThemeData(
      primaryColorLight: darkPrimaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: "El Messiri",
            color: Colors.white,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkPrimaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFFACC1D),
          selectedLabelStyle: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 17,
            fontWeight: FontWeight.normal,
          ),
          selectedIconTheme: IconThemeData(
            color: Color(0xFFFACC1D),
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFACC1D)),
        bodyLarge: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        bodyMedium: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white),
        bodySmall: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white),
      ));
}
