import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(bodyColor: AppPallete.secondaryColor),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.secondaryBackgroundColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppPallete.backgroundColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    chipTheme: const ChipThemeData(
      color: MaterialStatePropertyAll(
        AppPallete.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.primaryColor),
      errorBorder: _border(AppPallete.errorColor),
      hintStyle: const TextStyle(
        color: AppPallete.tertiaryColor,
      ),
    ),
  );
}
