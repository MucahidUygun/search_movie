import 'package:flutter/material.dart';


extension ThemeDataExtesion on ThemeData{
   TextStyle get headline1 {
    return const TextStyle(
        fontFamily: 'Inter',
        fontSize: 28,
        fontWeight: FontWeight.w900,
        color: Color(0xFFFFFFFF));
  }

  TextStyle get headline2 {
    return const TextStyle(
        fontFamily: 'Inter',
        fontSize: 26,
        height: 1,
        fontWeight: FontWeight.w700,
        color: Color(0xFF000000));
  }

  TextStyle get headline3 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 22,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get headline4 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle headline5({bool localDark = false}) {
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: (localDark || brightness == Brightness.dark)
            ? Colors.white
            : Colors.black);
  }

  TextStyle get headline6 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get heading1 => headline1;

  TextStyle get heading2 => headline2;
}