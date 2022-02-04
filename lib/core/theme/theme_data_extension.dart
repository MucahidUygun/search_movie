import 'package:flutter/material.dart';
import 'package:search_movie/core/theme/theme_colors.dart';


extension ThemeDataExtesion on ThemeData{
   TextStyle get headline1 {
    return const TextStyle(
        fontFamily: 'Inter',
        fontSize: 28,
        fontWeight: FontWeight.w900,
        color: Color(0xFFFFFFFF));
  }
  TextStyle get headline2{
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      fontWeight: FontWeight.w800,
    );
  }

  TextStyle get headline3 {
    return const TextStyle(
        fontFamily: 'Inter',
        fontSize: 20,
        height: 1,
        fontWeight: FontWeight.w700,
        color: Color(0xFF000000));
  }

  TextStyle get headline4 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: ThemeColor.titleDarkColor
    );
  }

  TextStyle get headline5 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle headline6({bool localDark = false}) {
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: (localDark || brightness == Brightness.dark)
            ? Colors.white
            : Colors.black);
  }

  TextStyle get headline7 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );
  }TextStyle get headline8 {
    return const TextStyle(
      fontFamily: 'Inter',
      fontSize: 8,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle get heading1 => headline1;

  TextStyle get heading2 => headline2;
}