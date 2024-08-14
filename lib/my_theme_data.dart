import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_islami/colors.dart';

class myThemeData {

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
    cardColor:Colors.white.withOpacity(0.7),
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColor.BlackColor,
            size: 30,
          ),
          shadowColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle:
          GoogleFonts.elMessiri(
            color: Color.fromRGBO(36, 36, 36, 1),
            fontWeight: FontWeight.w700,
            fontSize: 30,
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,

      ),
      dividerTheme: DividerThemeData(
        color: AppColor.primaryColor,
        thickness: 3,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            color: AppColor.BlackColor,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
          bodySmall: GoogleFonts.elMessiri(
            color: AppColor.BlackColor,
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
      ),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.primaryColor,
          onPrimary: AppColor.primaryColor,
          secondary: AppColor.primaryColor,
          onSecondary: AppColor.primaryColor,
          error: AppColor.primaryColor,
          onError: AppColor.primaryColor,
          background: AppColor.primaryColor,
          onBackground: AppColor.primaryColor,
          surface: AppColor.primaryColor,
          onSurface: AppColor.primaryColor),
  );
  static ThemeData darkTheme = ThemeData(
    cardColor: AppColor.primaryDark.withOpacity(0.7),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        shadowColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle:
        GoogleFonts.elMessiri(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 30,
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.primaryDark,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: AppColor.YellowTextDark,
      unselectedItemColor: Colors.white,

    ),
    dividerTheme: DividerThemeData(
      color: AppColor.primaryColor,
      thickness: 3,
    ),
    iconTheme: IconThemeData(size: 30, color: AppColor.YellowTextDark),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
        bodySmall: GoogleFonts.elMessiri(
          color: AppColor.YellowTextDark,
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),

    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColor.YellowTextDark,
        onPrimary: AppColor.primaryDark,
        secondary: AppColor.primaryDark,
        onSecondary: AppColor.primaryDark,
        error: AppColor.primaryDark,
        onError: AppColor.primaryDark,
        background: AppColor.primaryDark,
        onBackground:AppColor.primaryDark,
        surface: AppColor.primaryDark,
        onSurface: AppColor.primaryDark,),
  );
  static String getBackgroundImage(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? "assets/images/dark_bg.png"
        : "assets/images/background.png";
  }
}