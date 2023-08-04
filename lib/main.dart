import 'package:flutter/material.dart';
import 'package:flutter_project_one/ui/landing_page.dart';
import 'package:flutter_project_one/util/app_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          labelSmall: TextStyle(
            fontSize: 12,
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
