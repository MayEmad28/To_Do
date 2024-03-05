import 'package:flutter/material.dart';

class MyTheme{
  static const String routeName='theme';
  static Color blackColor=Color(0xff383838);
  static Color whiteColor=Color(0xffFFFFFF);
  static Color greenColor=Color(0xff61E757);
  static Color grayColor=Color(0xff767676);
  static Color redColor=Color(0xffEC4B4B);
  static Color primaryColor=Color(0xff5D9CEC);
  static Color backgroundLight=Color(0xffDFECDB);
  static Color backgroundDark=Color(0xff060E1E);

  static ThemeData lightMode=ThemeData(
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
      toolbarHeight: 120,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),

    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: grayColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        color: grayColor,
        fontWeight: FontWeight.normal
      )
    )
  );
  static ThemeData darkMode=ThemeData(
    scaffoldBackgroundColor: backgroundDark,

  );
}
