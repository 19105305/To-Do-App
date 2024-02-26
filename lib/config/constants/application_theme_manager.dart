
import 'package:flutter/material.dart';

class ApplicationThemeManager{

  static const Color primaryColor=Color(0xFF5D9CEC);
  static const Color primaryDarkColor=Color(0xFF060E1E);
  static ThemeData lightTheme= ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFFDFECDB),
    bottomAppBarTheme: BottomAppBarTheme(
      padding: EdgeInsets.zero,
      color: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
     selectedIconTheme: IconThemeData(
       color: primaryColor,
       size:38,
     ),
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Colors.grey.shade500,
        size: 30
      )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(
          color: Colors.white,
          width: 4
        ),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.white
      ),
      bodyLarge: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Colors.black
      ),
      bodyMedium:  TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black
      ),
      bodySmall:  TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black
      ),
      displayLarge:  TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.white
      ),
    )

  );
  static ThemeData darkTheme= ThemeData(
    scaffoldBackgroundColor: Color(0xFF060E1E),
    primaryColor: primaryColor,
    primaryColorDark: primaryDarkColor,
    bottomAppBarTheme: BottomAppBarTheme(
      padding: EdgeInsets.zero,
      color: Color(0xFF141922),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: primaryColor,
          size:38,
        ),
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
            color: Colors.grey.shade500,
            size: 30
        )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
  side: BorderSide(
  color: Color(0xFF060E1E),
  width: 4
  ),

    ),
    ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white
        ),
        bodyLarge: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.black
        ),
        bodyMedium:  TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white
        ),
        bodySmall:  TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: primaryColor
        ),
        displayLarge:  TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white
        ),
      )
  );
}
// color: Color(0xFF141922),