import 'package:bookia_app_two/core/utils/colors.dart';
import 'package:bookia_app_two/core/utils/text_styles.dart';
import 'package:bookia_app_two/features/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSerifDisplay().fontFamily,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.secondaryColor,
          hintStyle: getBodyStyle(color: AppColors.greyColor),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.greyColor),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
      home: const WelcomeView(),
    );
  }
}
