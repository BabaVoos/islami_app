import 'package:flutter/material.dart';
import 'package:islamii/core/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.lightPrimaryColor,
    canvasColor: AppColors.lightPrimaryColor,
    cardColor: AppColors.lightSecondaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      elevation: 0.0,
      centerTitle: true,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightPrimaryColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      selectedItemColor: Colors.black,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 28,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.lightPrimaryColor.withOpacity(.7,),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            50,
          ),
          topRight: Radius.circular(
            50,
          ),
        ),
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkPrimaryColor,
    canvasColor: AppColors.darkGoldColor,
    cardColor: AppColors.darkPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      elevation: 0.0,
      centerTitle: true,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkPrimaryColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      selectedItemColor: AppColors.darkGoldColor,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: AppColors.darkGoldColor,
        size: 28,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
      selectedLabelStyle: TextStyle(
        color: AppColors.darkGoldColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: AppColors.darkGoldColor,
      ),
    ),
    bottomSheetTheme:  BottomSheetThemeData(
      backgroundColor: AppColors.darkPrimaryColor.withOpacity(.7,),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            50,
          ),
          topRight: Radius.circular(
            50,
          ),
        ),
      ),
    ),

  );
}
