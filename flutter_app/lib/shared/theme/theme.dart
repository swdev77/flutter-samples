import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryGreen = Color(0xFF4CAF50); // Adjust based on exact hex if needed
  static const Color background = Color(0xFFF5F5F5); // Light grey background
  static const Color textDark = Color(0xFF1F2937);
  static const Color textLight = Color(0xFF9CA3AF);
  static const Color white = Colors.white;
  static const Color inputFill = Colors.white;
}

class AppTextStyles {
  static TextStyle get header => GoogleFonts.inter(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.textDark,
      );

  static TextStyle get subHeader => GoogleFonts.inter(
        fontSize: 14,
        color: AppColors.textLight,
      );

  static TextStyle get body => GoogleFonts.inter(
        fontSize: 16,
        color: AppColors.textDark,
      );

  static TextStyle get buttonText => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      );
      
  static TextStyle get linkText => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryGreen,
      );
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primaryGreen,
      scaffoldBackgroundColor: AppColors.background,
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme(),
    );
  }
}
