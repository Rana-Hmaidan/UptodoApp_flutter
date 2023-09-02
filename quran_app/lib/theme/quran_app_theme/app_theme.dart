import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/theme.dart';

class AppTheme{

  static ValueNotifier<Locale> currentLocale = ValueNotifier(ThemeConstants.englishLocale);

  static ThemeData lightTheme() => ThemeData(
    primaryColor: Colors.lightBlueAccent,
    scaffoldBackgroundColor: Colors.grey[100],
    fontFamily: ThemeConstants.fontFamily,

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w700,
      ),
      bodySmall:TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),  
      labelSmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),

  );

}