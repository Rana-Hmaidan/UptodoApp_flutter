import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasks_app/core/constants/app_colors.dart';
import 'package:tasks_app/core/constants/theme.dart';

class AppTheme{

  static ThemeData lightTheme() => ThemeData(
    
    primaryColor: AppColors.primaryColor,

    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,

    fontFamily: ThemeConstants.latofontFamily,

    appBarTheme: const AppBarTheme(
      backgroundColor:  AppColors.scaffoldBackgroundColor,
      elevation: 0,

      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      )
    ),

    textTheme: const TextTheme(

      headlineLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),

      headlineSmall: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w700,
      ),

      bodySmall:TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),

      labelLarge: TextStyle(
        fontSize:20.0,
        fontWeight: FontWeight.w700,
      ),

      labelMedium: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),

      labelSmall: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),

    ),

     inputDecorationTheme: InputDecorationTheme(
        filled: true, 
        fillColor: AppColors.inputBackgroundColor,
        hintStyle: const TextStyle(
          color: AppColors.greyColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide:  const BorderSide(color: AppColors.lightBackgroundColor, width: 0.8),
        ), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide:  const BorderSide(color: AppColors.lightBackgroundColor, width: 0.8),
        ),
        ),

  );

}