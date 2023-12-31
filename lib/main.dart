import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/landing_page.dart';
import 'package:flutter_project_one/util/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: GoogleFonts.robotoTextTheme().copyWith(
          headlineLarge: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
          headlineMedium: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          headlineSmall: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
          bodyLarge: GoogleFonts.robotoSlab(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: GoogleFonts.robotoSlab(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: GoogleFonts.robotoSlab(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: GoogleFonts.robotoSlab(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          labelSmall: GoogleFonts.robotoSlab(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: Colors.white38,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
